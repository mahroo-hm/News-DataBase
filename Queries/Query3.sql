USE master

GO

USE [newsdatabase]

-- Retrieve all news articles with content containing the word "technology" and group them by the year of publication:
SELECT YEAR(News.newsdate) AS publication_year ,COUNT(*) AS article_count
FROM News
WHERE content LIKE '%technology%'
GROUP BY YEAR(News.newsdate);
