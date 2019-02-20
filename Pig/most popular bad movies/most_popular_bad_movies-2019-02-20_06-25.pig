ratings = LOAD '/user/maria_dev/ml-100k/u.data' 
	AS (userID: int, movieID: int, rating: int, ratingTime: int);

metadata = LOAD '/user/maria_dev/ml-100k/u.item' USING PigStorage('|')
	AS (movieID: int, movieTitle: chararray, releaseDate: chararray, videoRelease: chararray, imbdLink: chararray);
    
nameLookup = FOREACH metadata GENERATE movieID, movieTitle, 
	ToUnixTime(ToDate(releaseDate,'dd-MMM-yyyy')) AS releaseTime;
    
ratingsByMovie = GROUP ratings BY movieID;

avgRatings = FOREACH ratingsByMovie GENERATE group AS movieID, 
	AVG(ratings.rating) AS avgRating, COUNT(ratings.rating) AS numRatings;

badMovies = FILTER avgRatings BY avgRating < 2.0;

namedBadMovies = JOIN badMovies BY movieID, nameLookup BY movieID;

finalResults = FOREACH namedBadMovies GENERATE nameLookup::movieTitle AS movieName, 
	badMovies::avgRating AS avgRating, badMovies::numRatings AS numRatings;

finalResultsSorted = ORDER finalResults BY numRatings DESC;

DUMP finalResultsSorted;

