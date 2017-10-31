DROP DATABASE IF EXISTS CarlDB;
CREATE DATABASE CarlDB;

USE CarlDB;

CREATE TABLE Project
(
	id			int				NOT NULL	auto_increment,
    PRIMARY KEY (id),
    
    name		varchar(50)		NOT NULL,
    image		varchar(15)		NOT NULL,
    priority	int				NULL		unique,
    
    context		int				NOT NULL
);

CREATE TABLE Context
(
	id			int				NOT NULL	auto_increment,
    PRIMARY KEY (id),
    
    name		varchar(50)		NOT NULL
);