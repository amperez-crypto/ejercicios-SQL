-- Ejercicio 18: Clientes mayores de 60 años con total gastado

SELECT 
    c.nombre,
    CAST((julianday('now') - julianday(c.fecha_nacimiento)) / 365.25 AS INTEGER) AS edad,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING edad > 60
ORDER BY edad DESC;

-- R/ PRIMER CLIENTE = NADIA, 90 AÑOS, TOTAL GASTADO $31.790
--	  ULTIMO CLIENTE = VIVIANA, 61 AÑOS, TOTAL GASTADO $37.853