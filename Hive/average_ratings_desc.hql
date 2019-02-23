CREATE VIEW IF NOT EXISTS avgRatings AS
SELECT movieID, count(movieID) AS ratingCount, AVG(rating) AS avgRatings
FROM ratings
GROUP BY movieID
ORDER BY avgRatings DESC;

SELECT n.title, avgRatings
FROM avgRatings t JOIN names n ON t.movieID = n.movieID
WHERE ratingCount > 10;
