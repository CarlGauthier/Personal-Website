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
