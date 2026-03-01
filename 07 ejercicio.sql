-- Ejercicio 07: Accesorios con precio menor a 500
-- R/ CASCO ABIERTO, ALTIMETRO DIGITAL, ALTIMETRO ANALOGICO, GAFAS P, GUANTES TERMICOS

SELECT nombre, precio
FROM productos
WHERE categoria = 'Accesorios'
AND precio < 500;