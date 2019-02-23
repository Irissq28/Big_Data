CREATE VIEW IF NOT EXISTS topMovieISs AS
SELECT movieID, count(movieID) AS ratingCount
FROM ratings
GROUP BY movieID
ORDER BY ratingCount DESC;

SELECT n.title, ratingCount
FROM topMovieIDs t JOIN names n ON t.movieID = n.movieID;
