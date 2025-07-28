CREATE DATABASE IF NOT EXISTS veterinaria;

USE veterinaria;

-- Tabla: Dueños
CREATE TABLE IF NOT EXISTS Dueños (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    cedula VARCHAR(15) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(150)
);

-- Tabla: Mascotas
CREATE TABLE IF NOT EXISTS Mascotas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_dueño INT NOT NULL,
    nombre_mascota VARCHAR(50) NOT NULL,
    especie VARCHAR(30),
    raza VARCHAR(50),
    edad INT,
    sexo ENUM('Macho', 'Hembra'),
    vacunado BOOLEAN,
    FOREIGN KEY (ID_dueño) REFERENCES Dueños(ID)
);

-- Tabla: Servicio
CREATE TABLE IF NOT EXISTS Servicio (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre_servicio VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL
);

-- Tabla: Veterinario
CREATE TABLE IF NOT EXISTS Veterinario (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    cedula VARCHAR(15) UNIQUE NOT NULL
);

-- Tabla: Visita
CREATE TABLE IF NOT EXISTS Visita (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_mascota INT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (ID_mascota) REFERENCES Mascotas(ID)
);

-- Tabla: Registro_visitas
CREATE TABLE IF NOT EXISTS Registro_visitas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_servicio INT NOT NULL,
    ID_visita INT NOT NULL,
    ID_veterinario INT NOT NULL,
    FOREIGN KEY (ID_servicio) REFERENCES Servicio(ID),
    FOREIGN KEY (ID_visita) REFERENCES Visita(ID),
    FOREIGN KEY (ID_veterinario) REFERENCES Veterinario(ID)
);

-- Tabla: Tratamiento
CREATE TABLE IF NOT EXISTS Tratamiento (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre_tratamiento VARCHAR(100) NOT NULL,
    observacion TEXT
);

-- Tabla: Registro_tratamiento
CREATE TABLE IF NOT EXISTS Registro_tratamiento (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_visita INT NOT NULL,
    ID_tratamiento INT NOT NULL,
    ID_veterinario INT NOT NULL,
    FOREIGN KEY (ID_visita) REFERENCES Visita(ID),
    FOREIGN KEY (ID_tratamiento) REFERENCES Tratamiento(ID),
    FOREIGN KEY (ID_veterinario) REFERENCES Veterinario(ID)
);