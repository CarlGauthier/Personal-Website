USE CarlDB;

-- ----------------------------

DELETE FROM Project;
ALTER TABLE Project AUTO_INCREMENT = 1;
INSERT INTO Project (name, image, priority, context)  
VALUES  
('Allooooooo', 'bird.jpg', 1, 1),
('Soccer Arena', 'soccer.jpg', 2, 2),
('Sample project', 'rainbow.jpg', 3, 1),
('Sample project', 'keyboard.jpg', 4, 1),
('Sample project', 'snow.jpg', 5, 1),
('Sample project', 'bird.jpg', 9, 1),
('Soccer Arena', 'soccer.jpg', 8, 2),
('Sample project', 'rainbow.jpg', 7, 1),
('Sample project', 'keyboard.jpg', 6, 1),
('Sample project', 'snow.jpg', 10, 1);

-- ----------------------------

DELETE FROM Context;
ALTER TABLE Context AUTO_INCREMENT = 1;
INSERT INTO Context (name)
VALUES
('Project Context'),
('Jeu Unity');