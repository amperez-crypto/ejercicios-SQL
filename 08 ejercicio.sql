-- Ejercicio 08: Total de ventas con el cupón ULTIMO_SUSPIRO
	-- R/ 250 ventas
-- El codigo para la primera pregunta es este:
	-- SELECT COUNT(*) AS total_ventas_cupon
	-- FROM ventas
	-- WHERE cupon_usado = 'ULTIMO_SUSPIRO';
-- Pero despues quiese ver el total de ventas de cupon vs el total de dinero
	-- total ventas: 250 - total dinero: $838.565

SELECT COUNT(*) AS total_ventas_cupon,
       SUM(total_venta) AS total_dinero_cupon
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';