USE master

GO

USE [newsdatabase]

SELECT YEAR(News.newsdate) AS publication_year,Tags.tag_name,COUNT(*) AS total_articles
FROM News
JOIN Tags ON News.news_ID=Tags.news_ID
GROUP BY YEAR(News.newsdate),Tags.tag_name;