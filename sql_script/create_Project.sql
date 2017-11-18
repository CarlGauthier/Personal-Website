CREATE TABLE Project
(
	id				INT				NOT NULL	AUTO_INCREMENT,
    
    name			VARCHAR(50)		NOT NULL,
    image			VARCHAR(15)		NOT NULL,
    priority		INT				NULL		UNIQUE,
    
    type			TINYINT			NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE ProjectType
(
	id				TINYINT			NOT NULL	AUTO_INCREMENT,
    
    name			VARCHAR(25)		NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE ProjectTag
(
	project			INT				NOT NULL,	-- FK
	tag				INT				NOT NULL,	-- FK
    
    PRIMARY KEY (project, tag)
);
