USE CarlDB;

-- ----------------------------

ALTER TABLE Project AUTO_INCREMENT = 1;
INSERT INTO Project (name, image, priority, context)  
VALUES  
('Sample project', 'bird.jpg', 1, 1),
('Sample project', 'soccer.jpg', 2, 2),
('Sample project', 'rainbow.jpg', 3, 1),
('Sample project', 'keyboard.jpg', 4, 1),
('Sample project', 'snow.jpg', 5, 1),
('Sample project', 'bird.jpg', 9, 1),
('Sample project', 'soccer.jpg', 8, 2),
('Sample project', 'rainbow.jpg', 7, 1),
('Sample project', 'keyboard.jpg', 6, 1),
('Sample project', 'snow.jpg', 10, 1);

-- ----------------------------

ALTER TABLE Context AUTO_INCREMENT = 1;
INSERT INTO Context (name)
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
INSERT INTO BlogPost (title, image, content)
VALUES
('Lorem ipsum dolor sit amet, consectetur adipiscing.', 'blogpost.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget varius leo, vulputate dictum enim. Aenean suscipit quis leo at molestie. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ac facilisis metus. Nulla eros orci, imperdiet at feugiat faucibus, semper eu lectus. In eget porttitor mi. Maecenas ac est vel enim luctus consequat. Etiam in elit quis nisl iaculis congue eu id enim. Suspendisse congue sem sed dui vestibulum, eget scelerisque lectus aliquet. Suspendisse potenti. Suspendisse rutrum magna et nunc dapibus varius. Aenean facilisis eros nibh, quis semper diam porta ac. Quisque dictum, tortor nec venenatis tincidunt, nisi urna facilisis mi, non rhoncus mauris urna quis tortor. Donec id efficitur nisi. Pellentesque semper finibus turpis ut euismod.'),
('Lorem ipsum dolor sit.', 'blogpost.png', '<b>Morbi ut dignissim ante. Vestibulum sit amet orci congue, vehicula est ut, faucibus sapien. Vivamus pulvinar neque eu mollis fermentum. Vivamus et libero nec purus imperdiet porttitor. Donec ac ligula orci. Vivamus eu finibus dolor, vel interdum erat. Pellentesque egestas ut metus sed pulvinar. Etiam ut dignissim erat, sit amet efficitur elit. Proin nisl ligula, viverra non accumsan non, malesuada non purus. In id ligula sit amet sem finibus rutrum vel id ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis sem mollis enim porta tempor. Integer mi mauris, pellentesque in nulla vel, convallis viverra enim. Sed dignissim libero nec diam vehicula convallis.</b>');