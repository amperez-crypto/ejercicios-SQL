-- Ejercicio 20: Análisis por categoría de producto

SELECT 
    p.categoria,
    SUM(v.total_venta) AS ingreso_total,
    SUM(dv.cantidad) AS total_unidades,
    AVG(v.total_venta) AS ticket_promedio
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
JOIN ventas v ON dv.id_venta = v.id_venta
GROUP BY p.categoria;

-- R/ ACCESORIOS, INGRESO TOTAL = 6812133, UNIDADES = 2548, TICKET = 4028.5
-- R/ PARACIADAS, INGRESO TOTAL = 6061693, UNIDADES = 1248, TICKET = 7303.2