USE master

GO

USE [newsdatabase]

-- Retrieve all authors who have written news articles with more than 800 views:
SELECT *
FROM Author
WHERE author_ID IN (
    SELECT author_ID
    FROM News
    WHERE views > 800
);
