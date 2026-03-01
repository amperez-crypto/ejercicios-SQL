-- Ejercicio 06: Monto total de ventas históricas
-- R/$5,578,915 💰

SELECT SUM(total_venta) AS monto_total_ventas
FROM ventas;