-- Ejercicio 16: Cliente con mayor gasto total

SELECT c.nombre, SUM(v.total_venta) AS total_gastado
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente
ORDER BY total_gastado DESC
LIMIT 1;

-- R/ ELIGIA ROBLES: GASTO TOTAL DE $65.440