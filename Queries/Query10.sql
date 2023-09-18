USE master

GO

USE [newsdatabase]

SELECT n.title AS news_article_name,
		COUNT(DISTINCT c.commentID) AS num_comments,
		COUNT(DISTINCT r.react_ID) AS num_likes,
		n.views AS num_views
FROM News n
LEFT JOIN Comments c on n.news_ID=c.newsID
LEFT JOIN React r ON n.news_ID=r.news_ID AND r.reacttype='like'
GROUP BY n.news_ID,n.title,n.views;
