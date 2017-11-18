CREATE TABLE BlogPost
(
	id				INT				NOT NULL	AUTO_INCREMENT,
    
    title			VARCHAR(100)	NOT NULL,
    image			VARCHAR(15)		NOT NULL,
    description		VARCHAR(500)	NOT NULL,
    text			TEXT			NOT NULL,
	publicationDate	DATETIME		NULL		DEFAULT NOW(),
    lastEditDate	DATETIME		NULL,
    
    author			TINYINT			NOT NULL	DEFAULT 1,	-- FK
    type			TINYINT			NOT NULL,				-- FK
    
    PRIMARY KEY (id)
);

CREATE TABLE BlogPostType
(
	id				TINYINT			NOT NULL	AUTO_INCREMENT,
    
    name			VARCHAR(25)		NOT NULL,
    colorHex		CHAR(7)			NOT NULL,
    secColorHex		CHAR(7)			NOT NULL,
    fontColorHex	CHAR(7)			NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE BlogPostTag
(
	blogPost		INT				NOT NULL,	-- FK
	tag				INT				NOT NULL,	-- FK
    
    PRIMARY KEY (blogPost, tag)
);

CREATE TABLE BlogPostRelatedProject
(
	blogPost		INT				NOT NULL,	-- FK
	project			INT				NOT NULL,	-- FK
	
    PRIMARY KEY (blogPost, project)
);

CREATE TABLE Author
(
	id				TINYINT			NOT NULL	AUTO_INCREMENT,
    
    name			VARCHAR(50)		NOT NULL,
    
    PRIMARY KEY (id)
);
