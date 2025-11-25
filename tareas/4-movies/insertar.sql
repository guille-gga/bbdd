PRAGMA foreign_keys = ON;
INSERT INTO movies (id, title, year) VALUES 
('admin', 'adminpass', 'admin@gmail.com', 24, 5000),
('user0', 'user0pass', 'user0@gmail.com', 20, 1000),
('user1', 'user1pass', 'user1@gmail.com', 21, 500),
('user2', 'user2pass', 'user2@gmail.com', 32, NULL),
('user3', 'user3pass', 'user3@gmail.com', 67, NULL);

INSERT INTO genres (id, name) VALUES
(1, 'Hola, soy el admin!'),
(2, 'este es mi primer post!'),
(3, 'Holaaaaaa'),
(1, 'Recordatorio: La reunión es mañana a las 10 AM.'),
(2, 'okkkkk, gracias por el aviso.');