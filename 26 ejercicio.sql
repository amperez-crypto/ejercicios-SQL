-- Ejercicio 26: Clientes que compraron únicamente paracaídas

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE c.id_cliente NOT IN (
    SELECT DISTINCT v2.id_cliente
    FROM ventas v2
    JOIN detalle_ventas dv ON v2.id_venta = dv.id_venta
    JOIN productos p ON dv.id_producto = p.id_producto
    WHERE p.categoria = 'Accesorios'
)
GROUP BY c.id_cliente
ORDER BY total_gastado DESC;

-- R/ LEANDRA, TOTAL GASTADO $12300