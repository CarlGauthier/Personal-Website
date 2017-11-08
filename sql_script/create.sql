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
    image			varchar(15)		NOT NULL,
    content			text			NOT NULL,
	creationDate	datetime		NULL		default now(),
    lastEditDate	datetime		NULL,
    
    author			tinyint			NOT NULL	default 1,	-- FK
    
    PRIMARY KEY (id)
);

CREATE TABLE BlogPostRelatedProject
(
	project			int				NOT NULL,	-- FK
	blogPost		int				NOT NULL,	-- FK
    
    PRIMARY KEY (project, blogPost)
);

CREATE TABLE Author
(
	id				tinyint			NOT NULL	auto_increment,
    
    name			varchar(50)		NOT NULL,
    
    PRIMARY KEY (id)
);
