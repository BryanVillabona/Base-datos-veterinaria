-- Dueños
INSERT INTO Dueños (cedula, nombre, telefono, direccion) VALUES
('100000001', 'Carlos Mendoza', '3001234567', 'Calle 10 #5-22'),
('100000002', 'Laura García', '3109876543', 'Carrera 15 #45-12'),
('100000003', 'Andrés Pérez', '3112233445', 'Av. 68 #22-30'),
('100000004', 'Diana Torres', '3123456789', 'Calle 80 #50-10'),
('100000005', 'José Ramírez', '3004567890', 'Carrera 8 #12-45');

-- Mascotas
INSERT INTO Mascotas (ID_dueño, nombre_mascota, especie, raza, edad, sexo, vacunado) VALUES
(1, 'Firulais', 'Perro', 'Labrador', 4, 'Macho', TRUE),
(1, 'Misu', 'Gato', 'Persa', 2, 'Hembra', TRUE),
(2, 'Rocky', 'Perro', 'Bulldog', 5, 'Macho', FALSE),
(2, 'Luna', 'Gato', 'Siames', 1, 'Hembra', TRUE),
(3, 'Max', 'Perro', 'Golden Retriever', 3, 'Macho', TRUE),
(3, 'Nala', 'Gato', 'Maine Coon', 6, 'Hembra', FALSE),
(4, 'Toby', 'Perro', 'Poodle', 2, 'Macho', TRUE),
(4, 'Simba', 'Gato', 'Bengalí', 3, 'Macho', TRUE),
(5, 'Kira', 'Perro', 'Dálmata', 1, 'Hembra', FALSE),
(5, 'Milo', 'Gato', 'Sphynx', 4, 'Macho', TRUE);
