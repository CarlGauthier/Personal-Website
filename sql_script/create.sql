DROP DATABASE IF EXISTS CarlDB;
CREATE DATABASE CarlDB;

USE CarlDB;

CREATE TABLE Project
(
	id				int				NOT NULL	auto_increment,
    
    name			varchar(50)		NOT NULL,
    image			varchar(15)		NOT NULL,
    priority		int				NULL		unique,
    
    context			int				NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE Context
(
	id				int				NOT NULL	auto_increment,
    
    name			varchar(50)		NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE BlogPost
(
	id				int				NOT NULL	auto_increment,
    
    title			varchar(100)	NOT NULL,
	creationDate	date			NOT NULL,
    lastEditDate	date			NULL,
    
    author			tinyint			NOT NULL,	-- FK
    
    PRIMARY KEY (id)
);

CREATE TABLE BlogPostRelatedProject
(
	Project			int				NOT NULL,	-- FK
	blogPost		int				NOT NULL	-- FK
);

CREATE TABLE Author
(
	id				tinyint			NOT NULL	auto_increment,
    
    name			varchar(50)		NOT NULL,
    
    PRIMARY KEY (id)
);
