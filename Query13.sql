USE master

GO


USE [newsdatabase]

-- Retrieve the 10 most recent news articles whose author has average view of more than 20
SELECT TOP(10) News.*
FROM News
JOIN (
    SELECT Author.author_ID, AVG(News.views) AS avg_views
    FROM Author
    JOIN News ON Author.author_ID = News.author_ID
    GROUP BY Author.author_ID
    HAVING AVG(News.views) > 500
) AS AuthorViews ON News.author_ID = AuthorViews.author_ID
ORDER BY News.newsdate DESC