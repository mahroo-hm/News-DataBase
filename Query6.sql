USE master

GO

USE [newsdatabase]


SELECT DISTINCT Category.category_name
FROM Category
JOIN News ON Category.news_ID=News.news_ID
JOIN Media ON News.news_ID=Media.news_ID
WHERE Media.caption LIKE '%AI%'