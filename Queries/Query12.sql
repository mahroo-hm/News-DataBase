USE master

GO


USE [newsdatabase]

SELECT DISTINCT Category.category_name
FROM Category
JOIN News ON Category.news_ID=News.news_ID
JOIN Author ON News.author_ID=Author.author_ID
JOIN (
	SELECT newsid,COUNT(*) AS comment_count
	FROM comments
	GROUP BY newsid
	HAVING COUNT(*)>1
) AS Commentcount ON News.news_ID=Commentcount.newsid
WHERE Author.username='Ali';
