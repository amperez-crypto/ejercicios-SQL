-- Ejercicio 09: Venta con el mayor monto histórico
-- id_venta 1124, idid_cliente 155, fecha_venta 2025-12-05, venta_maxima 20200

SELECT id_venta, id_cliente, fecha_venta, MAX(total_venta) AS venta_maxima
FROM ventas;