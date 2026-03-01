-- Ejercicio 22: Clasificación de clientes por nivel de gasto

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado,
    CASE 
        WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
        WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
        ELSE 'Bajo Valor'
    END AS categoria_gasto
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente
ORDER BY total_gastado DESC;


-- Como el resultado es muy largo, 
-- se muestra solo una parte de la salida y quise saber cuantos de 
-- cada valor existen, se realiza el siguiente codigo: 

-- SELECT 
    -- categoria_gasto,
    -- COUNT(*) AS total_clientes
-- FROM (
    -- SELECT 
        -- c.nombre,
        -- SUM(v.total_venta) AS total_gastado,
        -- CASE 
            -- WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
            -- WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
            -- ELSE 'Bajo Valor'
        -- END AS categoria_gasto
    --FROM ventas v
    -- JOIN clientes c ON v.id_cliente = c.id_cliente
    -- GROUP BY v.id_cliente
--)
-- GROUP BY categoria_gasto
-- ORDER BY total_clientes DESC;

R/ ALTO VALOR = 234
MEDIO VALOR = 7 
BAJO VALOR = 8