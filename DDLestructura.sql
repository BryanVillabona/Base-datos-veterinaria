-- Tabla: Dueños
CREATE TABLE Dueños (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    cedula VARCHAR(15) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(150)
);

