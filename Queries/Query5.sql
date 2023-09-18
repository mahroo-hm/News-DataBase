USE master

GO

USE [newsdatabase]

-- Retrieve the average number of views for news articles by each author
SELECT Author.username, AVG(News.views) AS avgViews
FROM Author
JOIN News on Author.author_id = News.author_id
GROUP BY Author.username;
