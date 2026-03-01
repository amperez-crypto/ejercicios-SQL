-- Ejercicio 15: Accesorio con el precio más bajo

	-- SELECT MIN(precio) AS accesorio_mas_barato
	-- FROM productos
	-- WHERE categoria = 'Accesorios';
    
    -- Accesorio más barato con su nombre

SELECT nombre, precio
FROM productos
WHERE categoria = 'Accesorios'
ORDER BY precio ASC
LIMIT 1;

-- R/ ALTIMETRO ANALÓGICO - PRECIO: $150