-- Ejercicio 03: Paracaídas con el precio más alto
-- R/ PARACAIDAS TADEM PARA INSTRUCTOR 5200

SELECT nombre, precio
FROM productos
WHERE categoria = 'Paracaídas'
ORDER BY precio DESC
LIMIT 1;