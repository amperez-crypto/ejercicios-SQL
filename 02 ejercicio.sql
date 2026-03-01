-- E2 
--Enlista todos los productos de la categoría "Paracaídas" 
--con sus precios, ordenados de mayor a menor precio. 
-- visualizar los 5 primeros con "LIMIT 5"
-- R/ paracaidas TADEM 5200, PRECISIÓN 4100, MILITAR 3500, DEPORTIVO 2800, EMERGENCIA 1500

SELECT nombre, precio
FROM productos
WHERE categoria = 'Paracaídas'
ORDER BY precio DESC
LIMIT(5)