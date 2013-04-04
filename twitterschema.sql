CREATE DATABASE twitter;

USE twitter;

CREATE TABLE userbase (
  id int not null auto_increment,
  PRIMARY KEY(id),
  first varchar(20),
  last varchar(20),
  handle varchar(20),
  city varchar(20),
  state char(2)
);

CREATE TABLE tweets
(id int not null auto_increment,
PRIMARY KEY(id),
user_id int(3),
tweet varchar(140),
hashtag varchar(140),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

insert into userbase
  (first, last, handle, city, state)
  values ('Shawn', 'Drost', 'SanityChecker','San Franc','CA');

insert into userbase
  (first, last, handle, city, state)
  values ('Howard', 'Tang', 'Cheeseen','London','UK');

insert into userbase
  (first, last, handle, city, state)
  values ('Doug', 'Calhoun', 'BeardedMan','The Forest','CA');

insert into tweets
  (user_id, tweet, hashtag)
  values (1, 'just do what I told you...', '#noobs');

  insert into tweets
  (user_id, tweet, hashtag)
  values (2, 'time for fish an chips', '#londoncalling');

  insert into tweets
  (user_id, tweet, hashtag)
  values (3, 'my beard has magic powers', '#beardhax2013');

  select userbase.handle, tweets.tweet, tweets.hashtag
  from userbase, tweets
  where userbase.id = tweets.user_id;

/*  Execute this file from the command line by typing:
 *    mysql < schema.sql   
 *  to create the database and the tables.*/