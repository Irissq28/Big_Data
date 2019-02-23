## Intro

### Import MySQL
Compared with Hive, MySQL can be used for OLDP(online transaction processing). So, exporting data into MySQL can be very useful, Moreover, you can import data exist in MySQL into Hadoop.

To import MySQL, you need to login as root user (tpye su root)in Putty, and run 

```
wget <URL>
```

After you download the MySQL file, run

```
mysql -u root -p
```

<img align ="center" src="https://github.com/Irissq28/Big_Data/blob/master/Images/putty.png" width="400" height="300"/>


Selecting the popular old movies, the version of Hive has uploaded.

```{mysql}
SELECT movies.title, COUNT(ratings.movie_id) AS ratingcount 
FROM movies 
INNER JOIN ratings ON movies.id = ratings.movie_id 
GROUP BY movies.title 
ORDER BY ratingcount;
```

Finally, run the code below to exit MySQL.

```{mysql}
exit
```

### Use Sqooq to import data from SQL to HDFS/HIVE 

```
GRANT ALL PRIVILEGES ON <DATABASE>.* to ''@'localhost';
```

We Specify 1 mapper here.
*To HDFS*
```
sqoop import --connect jdbc:mysql://localhost/movielens --driver com.mysql.jdbc.Driver --table movies -m 1
```

To Hive
```
sqoop import --connect jdbc:mysql://localhost/movielens --driver com.mysql.jdbc.Driver --table movies -m 1 --hive -import
```


### Use Sqooq to export data from SQL to HDFS/HIVE 

