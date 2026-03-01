-- Ejercicio 13: Total de productos en la categoría Paracaídas
	-- R/ 5

SELECT COUNT(*) AS total_paracaidas
FROM productos
WHERE categoria = 'Paracaídas';