USE carconnect;
CREATE TABLE usuarios (
    email VARCHAR(200) PRIMARY KEY UNIQUE NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellidos VARCHAR(40) NOT NULL,
    telefono VARCHAR(100) NOT NULL UNIQUE,
    contraseña VARCHAR(200) NOT NULL,
    img VARCHAR(200),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);
CREATE TABLE coches (
    matricula VARCHAR(100) PRIMARY KEY UNIQUE NOT NULL,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    color VARCHAR(30) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    img VARCHAR(200),
    email_usuario VARCHAR(200),
    CONSTRAINT fk_usuario FOREIGN KEY (email_usuario) REFERENCES usuarios(email)
);
CREATE TABLE mensajes (
    ID_mensaje INT AUTO_INCREMENT PRIMARY KEY,
    asunto VARCHAR(50) NOT NULL,
    mensaje TEXT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email_usuario VARCHAR(200),
    matricula_coches VARCHAR(100),
    CONSTRAINT fk_usuario_mensaje FOREIGN KEY (email_usuario) REFERENCES usuarios(email),
    CONSTRAINT fk_coches_mensaje FOREIGN KEY (matricula_coches) REFERENCES coches(matricula)
);