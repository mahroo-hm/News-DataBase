USE master

GO

USE [newsdatabase]

SELECT TOP(3) n.news_ID , n.title AS news_article_title,
	COUNT(DISTINCT c.commentID) + COUNT(DISTINCT r.react_ID) AS combined_likes_comments
FROM News n
LEFT JOIN Comments c ON n.news_ID=c.newsID
LEFT JOIN React r ON n.news_ID=r.news_ID AND r.reacttype = 'like'
GROUP BY n.news_ID , n.news_ID , n.title
ORDER BY combined_likes_comments DESC;
