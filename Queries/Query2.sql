USE master

GO

USE [newsdatabase]

-- Retrieve all news articles with comments by a specific user (user ID = 1):
SELECT *
FROM News
WHERE news_ID IN (
    SELECT news_ID
    FROM Comments
    WHERE userID = 1
);
