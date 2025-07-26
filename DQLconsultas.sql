-- 1. Listar todas las mascotas con el nombre del dueño (JOIN)
SELECT M.nombre_mascota, D.nombre AS nombre_dueño
FROM Mascotas M
JOIN Dueños D ON M.ID_dueño = D.ID;

-- 2. Mostrar visitas con nombre de mascota, servicio y veterinario
SELECT V.ID, M.nombre_mascota, S.nombre_servicio, VR.nombre AS veterinario, V.fecha
FROM Visita V
JOIN Registro_visitas RV ON V.ID = RV.ID_visita
JOIN Mascotas M ON V.ID_mascota = M.ID
JOIN Servicio S ON RV.ID_servicio = S.ID
JOIN Veterinario VR ON RV.ID_veterinario = VR.ID;

-- 3. ¿Cuántas mascotas hay registradas?
SELECT COUNT(*) AS total_mascotas FROM Mascotas;

-- 4. Edad promedio de las mascotas
SELECT AVG(edad) AS edad_promedio FROM Mascotas;

-- 5. Mostrar nombre en mayúsculas de todos los dueños
SELECT UPPER(nombre) AS nombre_mayuscula FROM Dueños;

-- 6. Mostrar nombre y longitud del nombre de cada mascota
SELECT nombre_mascota, LENGTH(nombre_mascota) AS longitud_nombre FROM Mascotas;

-- 7. Mostrar tratamientos aplicados con observaciones resumidas (primeros 20 caracteres)
SELECT T.nombre_tratamiento, SUBSTRING(T.observacion, 1, 20) AS resumen_observacion
FROM Tratamiento T;

-- 8. Mostrar mascotas vacunadas o no usando IF
SELECT nombre_mascota,
       IF(vacunado = 1, 'Vacunado', 'No vacunado') AS estado_vacuna
FROM Mascotas;