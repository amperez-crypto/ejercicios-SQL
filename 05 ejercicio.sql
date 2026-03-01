-- Ejercicio 05: Clientes ordenados alfabéticamente por nombre
-- PRIMER CLIENTE: ABIGAIL - ÚLTIMO CLIENTE: ÚRSULA

SELECT nombre, correo, fecha_nacimiento
FROM clientes
ORDER BY nombre ASC;