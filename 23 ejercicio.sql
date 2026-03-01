-- Ejercicio 23: Top 5 productos con mayor ingreso acumulado

SELECT 
    p.nombre,
    SUM(dv.cantidad * dv.precio_unitario) AS ingreso_acumulado
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY dv.id_producto
ORDER BY ingreso_acumulado DESC
LIMIT 5;

-- R/
	-- PARACAIDAS TADEM
	-- PARACAIDAS PRECISION
	-- PARACAIDAS MILITAR
	-- PARACAIDAS DEPORTIVO
	-- MOCHILA DE RESERVA