-- Ejercicio 17: Dinero dejado de ingresar por el cupón ULTIMO_SUSPIRO

SELECT 
    SUM(total_venta) AS total_con_descuento,
    SUM(total_venta / 0.70) AS total_sin_descuento,
    SUM(total_venta / 0.70) - SUM(total_venta) AS dinero_perdido
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';

-- R/ DINERO PERDIDO = $359.385
-- Interesnate saber cuales el historico de ventas en compartivo con otros periodos o años,
-- y evaluar si el dinero perdido se recupera ne fidelización o posicionamiento