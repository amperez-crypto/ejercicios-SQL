-- Ejercicio 10: Clientes femeninas ordenadas por fecha de nacimiento ascendente
	-- R/ PRIMERA CLIENTE: NADIA 1935-09-21
	--	  ÚLTIMA CLIENTE: ZAIDA 2007-09-18

SELECT nombre, correo, fecha_nacimiento
FROM clientes
WHERE genero = 'F'
ORDER BY fecha_nacimiento ASC;