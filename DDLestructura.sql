-- Tabla: Dueños
CREATE TABLE Dueños (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    cedula VARCHAR(15) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(150)
);

-- Tabla: Mascotas
CREATE TABLE Mascotas (
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
CREATE TABLE Servicio (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre_servicio VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL
);

-- Tabla: Veterinario
CREATE TABLE Veterinario (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    cedula VARCHAR(15) UNIQUE NOT NULL
);

-- Tabla: Visita
CREATE TABLE Visita (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_mascota INT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (ID_mascota) REFERENCES Mascotas(ID)
);