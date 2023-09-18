USE master

GO

USE [newsdatabase]


SELECT Sourcenew.source_name,COUNT(Sourcenew.news_ID) AS total_articles,AVG(News.views) AS avg_views
FROM Sourcenew
LEFT JOIN News ON Sourcenew.news_ID=News.news_ID
GROUP BY Sourcenew.source_name
ORDER BY AVG(News.views) DESC;
