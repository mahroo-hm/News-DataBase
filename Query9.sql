USE master

GO

USE [newsdatabase]

SELECT DISTINCT a.author_ID , a.username
FROM Author a
LEFT JOIN News n ON a.author_ID=n.author_ID
LEFT JOIN Media m ON n.news_ID=m.news_ID
WHERE m.media_ID IS NOT NULL;