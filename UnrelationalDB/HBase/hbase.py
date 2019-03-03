from starbase import Connection

c = Connection("127.0.0.1", "8000")

## create column family
ratings = c.table('ratings')

if (ratings.exists()):
    print("Dropping existing ratings table\n")
    ratings.drop()
# create col named 'rating'
ratings.create('rating')

print("Parsing the ml-100k ratings data...\n")
ratingFile = open("/Users/Anan/Desktop/impro/big\ data/hadoop/ml-100k/u.data ", "r")
# batch things up, do it all once, much faster
batch = ratings.batch()
# keep updating the batch
for line in ratingFile:
    (userID, movieID, rating, timestamp) = line.split()
    batch.update(userID, {'rating': {movieID: rating}})

ratingFile.close()
# commit the batch through the servie, written in HBase
print ("Committing ratings data to HBase via REST service\n")
batch.commit(finalize=True)

# querying data back
print ("Get back ratings for some users...\n")
print ("Ratings for user ID 1:\n")
print (ratings.fetch("1"))
print ("Ratings for user ID 33:\n")
print (ratings.fetch("33"))

ratings.drop()
