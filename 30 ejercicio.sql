-- Ejercicio 29: Porcentaje de ventas por ingresos del cupón ULTIMO_SUSPIRO

SELECT 
    SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) AS ventas_con_cupon,
    SUM(total_venta) AS total_ventas,
    ROUND(
        SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) * 100.0 
        / SUM(total_venta), 2
    ) AS porcentaje
FROM ventas;