-- Ejercicio 19: Producto más vendido en unidades

	-- SELECT p.nombre, SUM(dv.cantidad) AS total_unidades
	-- FROM detalle_ventas dv
	-- JOIN productos p ON dv.id_producto = p.id_producto
	-- GROUP BY dv.id_producto
	-- ORDER BY total_unidades DESC
	-- LIMIT 1;


-- PARA SABER EL MONTO TOTAL DE VENTAS

SELECT 
    p.nombre, 
    SUM(dv.cantidad) AS total_unidades,
    SUM(dv.cantidad * dv.precio_unitario) AS monto_total
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY dv.id_producto
ORDER BY total_unidades DESC
LIMIT 1;

-- R/ GAFAS DE NOCHE = 274, MONTO TOTAL = $149.350