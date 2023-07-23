USE master

GO

-- Check if a database named newsdatabase exists.
IF NOT EXISTS (

  SELECT name

  FROM sys.databases

  WHERE name = N'newsdatabase'

  -- If the newsdatabase exists, do nothing.
)

-- If the newsdatabase doesn't exist, create the database.
CREATE DATABASE [newsdatabase]

GO

-- Use the newsdatabase
USE [newsdatabase]

-- Check if the adminnew table 
IF OBJECT_ID ('dbo.Adminnew', 'U') IS NOT NULL
-- If the adminnew table exists, delete the table
DROP TABLE Adminnew

-- Create the adminnew table if it doesn't exist
CREATE TABLE Adminnew

(
  admin_ID INTEGER PRIMARY KEY NOT NULL,
  username VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(50) NOT NULL,
  phone_no varchar(20) NOT NULL
);

-- Check if the Usersnew table 
IF OBJECT_ID ('dbo.Usernew', 'U') IS NOT NULL
-- If the Usersnew table exists, delete the table
DROP TABLE Usernew

CREATE TABLE Usernew (
  userID INTEGER PRIMARY KEY NOT NULL,
  username VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(50) NOT NULL,
  phone_no varchar(20) NOT NULL
);

-- Check if the Author table 
IF OBJECT_ID ('dbo.Author', 'U') IS NOT NULL
-- If the Author table exists, delete the table
DROP TABLE Author


CREATE TABLE Author (
  author_ID  INT  PRIMARY KEY NOT NULL,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone_no varchar(20) NOT NULL
   );

-- Check if the news table 
IF OBJECT_ID ('dbo.News', 'U') IS NOT NULL
-- If the News table exists, delete the table
DROP TABLE News

CREATE TABLE News (
    news_ID INT PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    short_description VARCHAR(500) NOT NULL,
    newsdate DATETIME NOT NULL,
    author_ID INT NOT NULL,
    views INT NOT NULL,
    source_name VARCHAR(255),
    categories VARCHAR(255) NOT NULL,
    tags VARCHAR(255) ,
    FOREIGN KEY (author_ID) REFERENCES Author(author_ID)
);

-- Check if the Category table 
IF OBJECT_ID ('dbo.Category', 'U') IS NOT NULL
-- If the Category table exists, delete the table
DROP TABLE Category


CREATE TABLE Category (
  category_ID INT PRIMARY KEY NOT NULL,
  category_name VARCHAR(255) NOT NULL,
  catdescription TEXT NOT NULL,
  catimage VARCHAR(255) NOT NULL,
  news_ID INT NOT NULL,
  FOREIGN KEY (news_ID) REFERENCES News(news_ID)
  );

-- Check if the Media table 
IF OBJECT_ID ('dbo.Media', 'U') IS NOT NULL
-- If the Media table exists, delete the table
DROP TABLE Media
  
  CREATE TABLE Media (
    media_ID INT PRIMARY KEY NOT NULL,
    news_ID INT NOT NULL,
    file_path VARCHAR(255) NOT NULL,
    caption TEXT,
      FOREIGN KEY (news_ID) REFERENCES News(news_ID)
  );

 -- Check if the Ads table 
IF OBJECT_ID ('dbo.Ads', 'U') IS NOT NULL
-- If the Ads table exists, delete the table
DROP TABLE Ads

CREATE TABLE Ads (
	ad_ID INT PRIMARY KEY NOT NULL,
	news_ID INT NOT NULL,
	media_path VARCHAR(200),
	title VARCHAR(50) NOT NULL,
	site_URL VARCHAR(100)
);

-- Check if the Comments table 
IF OBJECT_ID ('dbo.Comments', 'U') IS NOT NULL
-- If the Comments table exists, delete the table
DROP TABLE Comments

create table Comments (
 commentid INT PRIMARY KEY NOT NULL,
 content VARCHAR(500) NOT NULL,
 newsID INT NOT NULL,
 userID INT NOT NULL,
 commentdate DATE NOT NULL,
 likenum INT NOT NULL,
 FOREIGN KEY (newsID) REFERENCES News(news_ID),
 FOREIGN KEY (userID) REFERENCES Usernew(userID)
);

-- Check if the React table 
IF OBJECT_ID ('dbo.React', 'U') IS NOT NULL
-- If the React table exists, delete the table
DROP TABLE React

create table React (
	react_ID INT PRIMARY KEY NOT NULL,
	reacttype VARCHAR(20) NOT NULL,
	news_ID INT NOT NULL,
	userid INT NOT NULL,
  FOREIGN KEY (news_ID) REFERENCES News(news_ID),
  FOREIGN KEY (userID) REFERENCES Usernew(userID)

);

-- Check if the Tags table 
IF OBJECT_ID ('dbo.Tags', 'U') IS NOT NULL
-- If the Tags table exists, delete the table
DROP TABLE Tags

create table Tags (
 tag_ID INT PRIMARY KEY NOT NULL,
 tag_name VARCHAR(50) NOT NULL,
 news_ID INT NOT NULL,
 FOREIGN KEY (news_ID) REFERENCES News(news_ID)

);

-- Check if the Sourcenew table 
IF OBJECT_ID ('dbo.Sourcenew', 'U') IS NOT NULL
-- If the Sourcenew table exists, delete the table
DROP TABLE Sourcenew

create table Sourcenew (
 source_ID INT PRIMARY KEY NOT NULL,
 source_name VARCHAR(100),
 sourceURL VARCHAR(1000) NOT NULL,
 news_ID INT NOT NULL,
 FOREIGN KEY (news_ID) REFERENCES News(news_ID)

);
Go
