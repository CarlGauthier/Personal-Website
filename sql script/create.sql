DROP DATABASE cgDb

-- ----------------------------

CREATE DATABASE cgDb;
USE cgDb;

CREATE TABLE post (
    
    id          		INT             NOT NULL    AUTO_INCREMENT,
    
    title       		VARCHAR(100)    NOT NULL,
    publicationDate		DATE			NOT NULL,
    lastEditDate		DATE			NULL,
    articlePath			VARCHAR(20)		NOT NULL,
    headerPath			VARCHAR(20)		NULL,
    
    PRIMARY KEY(id)
)