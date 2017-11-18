DROP DATABASE IF EXISTS CarlDB;
CREATE DATABASE CarlDB;
USE CarlDB;

CREATE TABLE Tag
(
        id                              INT                             NOT NULL        AUTO_INCREMENT,
    
    name                        VARCHAR(25)             NOT NULL,
    
    PRIMARY KEY (id)
);
CREATE TABLE Project
(
        id                              INT                             NOT NULL        AUTO_INCREMENT,
    
    name                        VARCHAR(50)             NOT NULL,
    image                       VARCHAR(15)             NOT NULL,
    priority            INT                             NULL            UNIQUE,
    
    type                        TINYINT                 NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE ProjectType
(
        id                              TINYINT                 NOT NULL        AUTO_INCREMENT,
    
    name                        VARCHAR(25)             NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE ProjectTag
(
        project                 INT                             NOT NULL,       -- FK
        tag                             INT                             NOT NULL,       -- FK
    
    PRIMARY KEY (project, tag)
);
CREATE TABLE BlogPost
(
        id                              INT                             NOT NULL        AUTO_INCREMENT,
    
    title                       VARCHAR(100)    NOT NULL,
    image                       VARCHAR(15)             NOT NULL,
    description         VARCHAR(500)    NOT NULL,
    text                        TEXT                    NOT NULL,
        publicationDate DATETIME                NULL            DEFAULT NOW(),
    lastEditDate        DATETIME                NULL,
    
    author                      TINYINT                 NOT NULL        DEFAULT 1,      -- FK
    type                        TINYINT                 NOT NULL,                               -- FK
    
    PRIMARY KEY (id)
);

CREATE TABLE BlogPostType
(
        id                              TINYINT                 NOT NULL        AUTO_INCREMENT,
    
    name                        VARCHAR(25)             NOT NULL,
    colorHex            CHAR(7)                 NOT NULL,
    secColorHex         CHAR(7)                 NOT NULL,
    fontColorHex        CHAR(7)                 NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE BlogPostTag
(
        blogPost                INT                             NOT NULL,       -- FK
        tag                             INT                             NOT NULL,       -- FK
    
    PRIMARY KEY (blogPost, tag)
);

CREATE TABLE BlogPostRelatedProject
(
        blogPost                INT                             NOT NULL,       -- FK
        project                 INT                             NOT NULL,       -- FK
        
    PRIMARY KEY (blogPost, project)
);

CREATE TABLE Author
(
        id                              TINYINT                 NOT NULL        AUTO_INCREMENT,
    
    name                        VARCHAR(50)             NOT NULL,
    
    PRIMARY KEY (id)
);
-- ProjectTag
ALTER TABLE ProjectTag ADD FOREIGN KEY (project) REFERENCES Project(id);
ALTER TABLE ProjectTag ADD FOREIGN KEY (tag) REFERENCES Tag(id);
-- BlogPost
ALTER TABLE BlogPost ADD FOREIGN KEY (author) REFERENCES Author(id);
ALTER TABLE BlogPost ADD FOREIGN KEY (type) REFERENCES BlogPostType(id);

-- BlogPostTag
ALTER TABLE BlogPostTag ADD FOREIGN KEY (blogPost) REFERENCES BlogPost(id);
ALTER TABLE BlogPostTag ADD FOREIGN KEY (tag) REFERENCES Tag(id);

-- BlogPostRelatedProject
ALTER TABLE BlogPostRelatedProject ADD FOREIGN KEY (blogPost) REFERENCES BlogPost(id);
ALTER TABLE BlogPostRelatedProject ADD FOREIGN KEY (project) REFERENCES Project(id);
ALTER TABLE Project AUTO_INCREMENT = 1;
INSERT INTO Project (name, image, priority, type)  
VALUES  
('Sample project', 'bird.jpg', 1, 1),
('Sample project', 'soccer.jpg', 2, 2),
('Sample project', 'rainbow.jpg', 3, 1),
('Sample project', 'keyboard.jpg', 4, 1);

-- ----------------------------

ALTER TABLE ProjectType AUTO_INCREMENT = 1;
INSERT INTO ProjectType (name)
VALUES
('Project Context'),
('Project Context');

-- ----------------------------

ALTER TABLE Author AUTO_INCREMENT = 1;
INSERT INTO Author (name)
VALUES
('Moi');

-- ----------------------------

ALTER TABLE BlogPost AUTO_INCREMENT = 1;
INSERT INTO BlogPost (title, image, description, text, type)
VALUES
('Lorem ipsum dolor sit amet, consectetur adipiscing.', 'node.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sagittis lorem in erat pellentesque, at tincidunt sem dapibus. Sed condimentum urna nisi, nec aliquam erat finibus porta. Aenean a metus non ante finibus accumsan nec id lectus. Aliquam fringilla arcu ullamcorper, viverra massa sed, suscipit felis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sagittis lorem in erat pellentesque, at tincidunt sem dapibus. Sed condimentum urna nisi, nec aliquam erat finibus porta. Aenean a metus non ante finibus accumsan nec id lectus. Aliquam fringilla arcu ullamcorper, viverra massa sed, suscipit felis.', 1),
('Lorem ipsum dolor sit.', 'wap1.jpg', 'Nullam lacinia, ante id ultricies sagittis, justo lorem convallis leo, sed condimentum augue purus ac enim. Aliquam ac accumsan eros, id faucibus orci. Cras scelerisque elementum libero. Vestibulum ultricies et arcu eget congue. Sed molestie feugiat facilisis. Vivamus ante enim, imperdiet et velit vitae, consequat dapibus eros.', 'Morbi ut dignissim ante. Vestibulum sit amet orci congue, vehicula est ut, faucibus sapien. Vivamus pulvinar neque eu mollis fermentum. Vivamus et libero nec purus imperdiet porttitor. Donec ac ligula orci. Vivamus eu finibus dolor, vel interdum erat. Pellentesque egestas ut metus sed pulvinar. Etiam ut dignissim erat, sit amet efficitur elit. Proin nisl ligula, viverra non accumsan non, malesuada non purus. In id ligula sit amet sem finibus rutrum vel id ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis sem mollis enim porta tempor. Integer mi mauris, pellentesque in nulla vel, convallis viverra enim. Sed dignissim libero nec diam vehicula convallis.', 2);

ALTER TABLE BlogPostType AUTO_INCREMENT = 1;
INSERT INTO BlogPostType (name, colorHex, secColorHex, fontColorHex)
VALUES
('Annonce', '#E04E92', '#9E2F62', '#FFFFFF'),
('Dev Blog', '#3C9FD1', '#266F93', '#003C5B'),
('Tutoriel', '#FFFFFF', '#BDBDBD', '#4B4B4B'),
('Article', '#FFD700', '#FF9900', '#BC4E00');
CREATE VIEW ProjectView AS (
        SELECT P.id, P.name, image, priority, PT.name type
    FROM Project P
    INNER JOIN ProjectType PT
                ON P.type = PT.id
        ORDER BY priority
);

CREATE VIEW HomeProjectView AS (
        SELECT *
    FROM ProjectView
        LIMIT 5
);

CREATE VIEW BlogPostView AS (
        SELECT BP.id, title, image, colorHex, secColorHex, fontColorHex, description, text,
    BPT.name type, date_format(publicationDate, "%Y-%m-%d")publicationDate, lastEditDate, A.name author 
    FROM BlogPost BP
    INNER JOIN Author A
                ON BP.author = A.id
        INNER JOIN BlogPostType BPT
                ON BP.type = BPT.id
        ORDER BY publicationDate
);

CREATE VIEW HomeBlogPostView AS (
        SELECT *
    FROM BlogPostView BP
    LIMIT 2
);
