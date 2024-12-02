INSERT INTO usuarios (email, nombre, apellidos, telefono, contraseña, img, fecha) VALUES
(MD5('usuario1@example.com'), 'Juan', 'Pérez', MD5('1234567890'), MD5('password1'), 'img1.jpg', NOW()),
(MD5('usuario2@example.com'), 'Ana', 'Gómez', MD5('2345678901'), MD5('password2'), 'img2.jpg', NOW()),
(MD5('usuario3@example.com'), 'Carlos', 'López', MD5('3456789012'), MD5('password3'), 'img3.jpg', NOW()),
(MD5('usuario4@example.com'), 'Laura', 'Martínez', MD5('4567890123'), MD5('password4'), 'img4.jpg', NOW()),
(MD5('usuario5@example.com'), 'Pedro', 'Hernández', MD5('5678901234'), MD5('password5'), 'img5.jpg', NOW());

INSERT INTO coches (matricula, marca, modelo, color, fecha, img, email_usuario) VALUES
('ABC1234', 'Toyota', 'Corolla', 'Rojo', NOW(), 'car1.jpg', MD5('usuario1@example.com')),
('XYZ5678', 'Honda', 'Civic', 'Azul', NOW(), 'car2.jpg', MD5('usuario2@example.com')),
('LMN9101', 'Ford', 'Focus', 'Verde', NOW(), 'car3.jpg', MD5('usuario3@example.com')),
('QRS1234', 'Chevrolet', 'Spark', 'Amarillo', NOW(), 'car4.jpg', MD5('usuario4@example.com')),
('TUV4567', 'Mazda', '3', 'Blanco', NOW(), 'car5.jpg', MD5('usuario5@example.com'));

INSERT INTO mensajes (asunto, mensaje, fecha, email_usuario, matricula_coches) VALUES
('Accidente en la calle 1', 'Se ha reportado un accidente en la calle 1, cerca de tu ubicación.', NOW(), MD5('usuario1@example.com'), 'ABC1234'),
('Mal estacionamiento en la calle 2', 'El coche está estacionado en una zona prohibida.', NOW(), MD5('usuario2@example.com'), 'XYZ5678'),
('Daño por accidente en la calle 3', 'Se han reportado daños en tu vehículo por un accidente.', NOW(), MD5('usuario3@example.com'), 'LMN9101'),
('Incidente con el tráfico en la calle 4', 'Se ha registrado un incidente de tráfico que involucra tu coche.', NOW(), MD5('usuario4@example.com'), 'QRS1234'),
('Coche estacionado ilegalmente en la calle 5', 'Tu vehículo ha sido reportado como estacionado ilegalmente.', NOW(), MD5('usuario5@example.com'), 'TUV4567');
