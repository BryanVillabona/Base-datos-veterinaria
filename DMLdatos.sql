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

-- Servicios
INSERT INTO Servicio (nombre_servicio, descripcion, precio) VALUES
('Baño', 'Baño básico con shampoo especial', 25000.00),
('Corte de uñas', 'Corte y limado de uñas', 15000.00),
('Consulta médica', 'Revisión general por el veterinario', 40000.00),
('Desparasitación', 'Aplicación de antiparasitario', 30000.00),
('Vacunación', 'Aplicación de vacuna anual', 35000.00);

-- Veterinarios
INSERT INTO Veterinario (nombre, cedula) VALUES
('Dr. Juan López', '900100100'),
('Dra. Marta Salas', '900200200'),
('Dr. Pablo Ruiz', '900300300');

-- Visitas
INSERT INTO Visita (ID_mascota, fecha) VALUES
(1, '2025-07-01'),
(2, '2025-07-02'),
(3, '2025-07-03'),
(4, '2025-07-04'),
(5, '2025-07-05'),
(6, '2025-07-06'),
(7, '2025-07-07'),
(8, '2025-07-08'),
(9, '2025-07-09'),
(10, '2025-07-10');

-- Registro_visitas
INSERT INTO Registro_visitas (ID_servicio, ID_visita, ID_veterinario) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(1, 6, 3),
(2, 7, 1),
(3, 8, 2),
(4, 9, 3),
(5, 10, 1);

-- Tratamientos
INSERT INTO Tratamiento (nombre_tratamiento, observacion) VALUES
('Antibiótico', 'Administrar por 5 días'),
('Antiinflamatorio', 'Aplicar cada 12 horas'),
('Vitaminas', 'Complemento nutricional'),
('Pomada tópica', 'Aplicar en zona afectada'),
('Antiparasitario oral', 'Dosis única');

-- Registro_tratamiento
INSERT INTO Registro_tratamiento (ID_visita, ID_tratamiento, ID_veterinario) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2);