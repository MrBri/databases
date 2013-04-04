CREATE DATABASE chatDB;

USE chatDB;

CREATE TABLE messages (
  id INT not null auto_increment,
  PRIMARY KEY(id),
  username varchar(20),
  message varchar(255),
  roomname varchar(20)
);

/*  Execute this file from the command line by typing:
 *    mysql < schema.sql   
 *  to create the database and the tables.*/