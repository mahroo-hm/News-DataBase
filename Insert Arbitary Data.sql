USE [newsdatabase]
-- DATA

INSERT INTO dbo.Usernew

  ([userID],[username],[email],[password],[phone_no])

-- Set the values to add to the Users table
VALUES

  ( 1, N'Mani', N'icomins0@usgs.gov', N'7)OG/"\r{iL|(\I', N'3908311263'),
  (2,N'Sepide', N'hmarrow1@weebly.com', N'>!&1l_rMe', N'1716533007'),
  (3,N'Mahsa', N'gilive2@umn.edu', N'h`0foqtCe4', N'2961717949'),
  (4,N'Amir', N'chiscoe3@parallels.com', N'~''#yF{z0seG1*f,', N'3110689499'),
  (5,N'Javid', N'wokey4@blogspot.com', N'BRR01fO', N'0725502665')

GO

INSERT INTO dbo.Adminnew

  ([admin_ID],[username],[email],[password],[phone_no])

-- Set the values to add to the Adminnew table
VALUES

  (1, N'Vladimir', N'vnockolds0@furl.net', N'mU0.Q{&),|>(', N'2698255087'),
  (2, N'Vincent', N'pportam1@elegantthemes.com', N'xEqNkPi3+iqO#&J', N'3881756061'),
  (3, N'Paton', N'mmacterrelly2@census.gov', N'ZfNimB&Wev1?F8,', N'2164870479'),
  (4, N'Nadya', N'npreedy3@hc360.com', N'qy(+wE7=gy', N'2175283806'),
  (5, N'Theo', N'tgordge4@spiegel.de', N'.+qwx1{o!fWZ', N'1889216288')

GO

INSERT INTO dbo.Author

  ([author_ID],[username],[email],[password],[phone_no])

-- Set the values to add to the Author table
VALUES

  (1, N'Ali', N'jmellem0@tripod.com',N'Q%@Ml(vv2$j4', N'1363376748'),
  (2, N'Keyvan', N'crosendorf1@msu.edu', N'L*<E?_bbwBuiC', N'3354711285'),
  (3, N'Nima', N'yskottle2@github.io', N'ek9#?8cN$', N'2389875122'),
  (4, 'Golshid', 'thammerton3@hostgator.com', 'O)#Uf9sE', '4146791650'),
  (5, 'Mahroo', 'mjirsa4@phpbb.com', '|t@6FOZ/GW"', '1837539947')

GO

INSERT INTO dbo.News

  ([News_ID],[title],[content],[short_description],[newsdate],[author_ID],[views],[source_name],[categories],[tags])

-- Set the values to add to the News table
VALUES

  (1, 'Departure of Messi', 'dolor sit amet consectetuer adipiscing technology elit proin risus praesent lectus vestibulum quam sapien varius', 'at turpis a pede posuere nonummy integer', '2022-08-02 04:40:54', 2, 790, 'Yakitri', 'Sports', 'US'),
  (2, 'Roger Waters Rant', 'vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', 'sit amet turpis elementum ligula vehicula', '2023-01-02 08:36:29', 5, 960, 'Janyx', 'Politics', 'Music'),
  (3, 'Tom Hanks Gets Robot Arm', 'nulla technology tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium', 'tempus vel pede morbi porttitor lorem id ligula', '2021-11-08 08:14:11', 1, 765, 'Blogtag', 'Celebrity', 'Robots'),
  (4, 'AMC Theaters CO2 Emission', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', 'fringilla rhoncus mauris enim leo rhoncus', '2021-12-04 21:33:47', 5, 257, 'Meezzy', 'Environment', 'Movie'),
  (5, 'New Iphone Flopped', 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', 'suscipit a feugiat et eros vestibulum ac', '2020-10-17 12:50:46', 4, 876, 'Aimbo', 'Technology', 'Trending'),
  (6, 'Schools Ban Teachers', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', 'ligula in lacus curabitur at ipsum ac tellus', '2021-08-03 21:12:25', 1, 588, 'Tambee', 'Education', null),
  (7, 'New Heath Ledger Movie Cancelled', 'nulla ut erat technology id mauris vulputate elementum nullam varius nulla facilisi cras non velit', 'amet sapien dignissim vestibulum vestibulum ante', '2021-11-21 05:55:55', 2, 788, 'Eimbee', 'Entertainment/Celebrity', 'Corona'),
  (8, 'COVID-19 Comeback', 'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'cras pellentesque volutpat dui maecenas tristique est', '2023-04-15 18:33:31', 3, 415, 'Linktype', 'Science', 'Book'),
  (9, 'Stock Market Crash', 'cubilia technology achania curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien', 'consequat morbi a ipsum integer a nibh', '2023-05-15 13:33:31', 2, 431, 'Devify', 'Technolgy', null),
  (10, 'Scientists Create Mechanical Eye', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 'dui vel nisl duis ac nibh fusce lacus', '2021-01-01 07:17:17', 5, 546, 'Teklist', 'Technology/Science', null)

GO

INSERT INTO dbo.Category

  ([category_ID],[category_name],[catdescription],[catimage],[news_ID])

-- Set the values to add to the Category table
VALUES

  (1, 'Sports', 'ldvvrroge', 'http://dummyimage.com/234x100.png/ff4444/ffffff', 1),
  (2, 'Politics', 'lajldaldj','http://dummyimage.com/234x100.png/dddddd/000000', 2),
  (3, 'Celebrity', 'txjjhsjjo', 'http://dummyimage.com/112x100.png/dddddd/000000', 3),
  (4, 'Environment', 'ylnrixukc', 'http://dummyimage.com/214x100.png/dddddd/000000', 4),
  (5, 'Technology', 'hhbtkpfdy', 'http://dummyimage.com/146x100.png/ff4444/ffffff', 5),
  (6, 'Education', 'ldvvrroge', 'http://dummyimage.com/234x100.png/ff4444/ffffff', 6),
  (7, 'Entertainment', 'lajldaldj','http://dummyimage.com/234x100.png/dddddd/000000', 7),
  (8, 'Celebrity', 'ksajdlal','http://dummyimage.com/234x100.png/dddddd/000000', 7),
  (9, 'Science', 'txjjhsjjo', 'http://dummyimage.com/112x100.png/dddddd/000000', 8),
  (10, 'Business', 'ylnrixukc', 'http://dummyimage.com/214x100.png/dddddd/000000', 9),
  (11, 'Technology', 'hhbtkpfdy', 'http://dummyimage.com/146x100.png/ff4444/ffffff', 10),
  (12, 'Science', 'sjdjadaw', 'http://dummyimage.com/146x100.png/ff4444/ffffff', 10)

GO

INSERT INTO dbo.Media

  ([media_ID],[news_ID],[file_path],[caption])

-- Set the values to add to the Media table
VALUES

    (1, 2, 'http://dummyimage.com/200x100.png/5fa2dd/ffffff', 'Roger Waters'),
	(2, 6, 'http://dummyimage.com/144x100.png/5fa2dd/ffffff', 'AI in schools'),
	(3, 9, 'http://dummyimage.com/101x100.png/ff4444/ffffff', 'Stock charts in 2023'),
	(4, 9, 'http://dummyimage.com/166x100.png/5fa2dd/ffffff', 'AI predicition of the crash'),
	(5, 9, 'http://dummyimage.com/234x100.png/5fa2dd/ffffff', 'Person blaming AI'),
	(6, 9, 'http://dummyimage.com/239x100.png/ff4444/ffffff', 'Wall Street shutdown'),
	(7, 1, 'http://dummyimage.com/181x100.png/cc0000/ffffff', 'How the AI world responded')

GO

INSERT INTO dbo.Comments

  ([commentid],[content],[newsID],[userID],[commentdate],[likenum])

-- Set the values to add to the Comments table
VALUES

    (1, '2008 was the same', 9, 5, '2015-05-26', 97),
	(2, 'Should have done that sooner when i was in school', 6, 1, '2021-03-13', 130),
	(3, 'This is why subcription services have been dominating the scene!', 4, 1, '2023-07-15', 75),
	(4, 'An amazing article written by a credible newsperson.', 6, 4, '2014-09-09', 74),
	(5, 'AMC almost went bankrupt during quarantine because of this.', 4, 1, '2021-10-12', 87),
	(6, 'The microprocessors used in this model are evidently slower than promised.', 5, 1, '2016-01-12', 11),
	(7, 'The amount of criticism this move got was unimaginable.', 6, 3, '2016-07-27', 65)

GO
 
 INSERT INTO dbo.Ads

  ([ad_ID],[news_ID],[media_path],[title],[site_URL])

-- Set the values to add to the Ads table
VALUES

    (1, 1, 'http://dummyimage.com/111x100.png/dddddd/000000', 'Hulu', 'https://elpais.com/accumsan/odio/curabitur/convallis/duis/'),
	(2, 4, 'http://dummyimage.com/120x100.png/dddddd/000000', 'Never buy a new radio!', 'http://tumblr.com/platea/dictumst/'),
	(3, 5, 'http://dummyimage.com/242x100.png/5fa2dd/ffffff', 'Newest TV model!', 'http://europa.eu/'),
	(4, 4, 'http://dummyimage.com/150x100.png/ff4444/ffffff', 'Limited time prices for subscription services!', 'http://artisteer.com/sit/amet/turpis/elementum.xml?')

GO

INSERT INTO dbo.React

  ([react_ID],[reacttype],[news_ID],[userID])

-- Set the values to add to the React table
VALUES

    (1, 'like', 5, 1),
	(2, 'dislike', 5, 5),
	(3, 'dislike', 5, 1),
	(4, 'dislike', 1, 2),
	(5, 'like', 2, 5)

GO

INSERT INTO dbo.Tags

  ([tag_ID],[tag_name],[news_ID])

-- Set the values to add to the Tags table
VALUES

    (1, 'Robots', 3),
	(2, 'Music', 2),
	(3, 'Trending', 5),
	(4, 'US', 1),
	(5, 'Corona', 7),
	(6, 'Book', 8),
	(7, 'Movie', 4)

GO

INSERT INTO dbo.Sourcenew

  ([source_ID],[source_name],[sourceURL],[news_ID])

-- Set the values to add to the Sourcenew table
VALUES

    (1, 'Seesaa', 'https://seesaa.net', 1),
	(2,'Business Week', 'http://businessweek.com', 2),
	(3, 'New York Times', 'http://nytimes.com', 3),
	(4, 'New York Times', 'http://nytimes.com', 4),
	(5, 'Reuters', 'http://reuters.com', 5),
	(6, 'The White House', 'https://whitehouse.gov', 6),
	(7, 'Wix', 'http://wix.com', 7),
	(8, 'ICIO', 'http://icio.us', 8),
	(9, 'Business Week', 'http://businessweek.com', 9),
	(10, 'New York Times', 'http://nytimes.com', 10)

GO