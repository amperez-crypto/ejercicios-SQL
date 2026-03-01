-- Ejercicio 27: Diferencia entre mes con mayor y menor venta en 2025

WITH ventas_por_mes AS (
    SELECT 
        strftime('%m', fecha_venta) AS mes,
        SUM(total_venta) AS total_mes
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY mes
)
SELECT 
    MAX(total_mes) AS mes_mayor,
    MIN(total_mes) AS mes_menor,
    MAX(total_mes) - MIN(total_mes) AS diferencia
FROM ventas_por_mes;