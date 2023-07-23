USE master

GO

USE [newsdatabase]

SELECT Author.author_ID,Author.username
FROM Author
JOIN News AS latest_news ON Author.author_ID=latest_news.author_ID
LEFT JOIN News AS prev_year_news
	ON Author.author_ID=prev_year_news.author_ID
	AND YEAR(prev_year_news.newsdate)=YEAR(GETDATE()-1)
WHERE latest_news.views >ISNULL(prev_year_news.views,0)
GROUP BY Author.author_ID,Author.username;