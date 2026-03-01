-- Ejercicio 21: Clientes que usaron el cupón ULTIMO_SUSPIRO al menos 3 veces

SELECT c.nombre, COUNT(*) AS veces_usado
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
WHERE v.cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY v.id_cliente
HAVING veces_usado >= 3
ORDER BY veces_usado DESC;

-- R/ 49 CLIENTES INICIA CON MACARIO 8 VECES, FINALIZA CON SORAYA 3 VECES