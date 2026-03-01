-- Ejercicio 14: Ventas del año 2025 ordenadas por fecha descendente
	-- R/ PRIMERA FECHA 2025-12-31, ULTIMA FECHA 2025-01-02
    
SELECT id_venta, id_cliente, fecha_venta, total_venta
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
ORDER BY fecha_venta DESC;