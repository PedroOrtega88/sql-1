-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- Tu respuesta aquí


SELECT * FROM usuarios_lenguajes;

Juan	Gomez	juan.gomez@example.com	28	Java
Maria	Lopez	maria.lopez@example.com	32	JavaScript
Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
Laura	Fernandez	laura.fernandez@example.com	30	C++
Pedro	Martinez	pedro.martinez@example.com	22	Ruby
Ana	Hernandez	ana.hernandez@example.com	35	SQL
Miguel	Perez	miguel.perez@example.com	28	PHP
Sofia	Garcia	sofia.garcia@example.com	26	Swift
Javier	Diaz	javier.diaz@example.com	31	TypeScript
Luis	Sanchez	luis.sanchez@example.com	27	Go
Elena	Moreno	elena.moreno@example.com	29	C#
Daniel	Romero	daniel.romero@example.com	33	HTML
Paula	Torres	paula.torres@example.com	24	CSS
Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
Carmen	Vega	carmen.vega@example.com	29	Kotlin
Adrian	Molina	adrian.molina@example.com	34	Objective-C
Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
Hector	Ortega	hector.ortega@example.com	30	Perl
Raquel	Serrano	raquel.serrano@example.com	32	Shell
Alberto	Reyes	alberto.reyes@example.com	28	VB.NET


-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- Tu respuesta aquí


SELECT COUNT(*) FROM usuarios_lenguajes;


20


-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE edad > 30;

2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
12	Daniel	Romero	daniel.romero@example.com	33	HTML
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell


-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- Tu respuesta aquí

SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'JavaScript';


1




-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE edad = 28;

1	Juan	Gomez	juan.gomez@example.com	28	Java
7	Miguel	Perez	miguel.perez@example.com	28	PHP
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
					




-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE email = 'juan.gomez@example.com';

1	Juan	Gomez	juan.gomez@example.com	28	Java
					



-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje = 'Java' AND edad < 25;

	(null)													

-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
-- Tu respuesta aquí
SELECT COUNT(DISTINCT edad) FROM usuarios_lenguajes WHERE lenguaje = 'Java';

1

-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NULL OR lenguaje = '';

null


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- Tu respuesta aquí

SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad ASC LIMIT 1;



-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- Tu respuesta aquí


SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad DESC;


-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad > 28
;

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%';
-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- Tu respuesta aquí
SELECT lenguaje, COUNT(*) AS cantidad FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY cantidad DESC LIMIT 1;

-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript' ORDER BY edad DESC LIMIT 1;

-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'Python';

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- Tu respuesta aquí
SELECT nombre, apellido, GROUP_CONCAT(lenguaje ORDER BY lenguaje ASC) AS lenguajes FROM usuarios_lenguajes GROUP BY id_usuario;

-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example%';
-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35 AND lenguaje IS NOT NULL AND lenguaje <> '';

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;

-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, COUNT(lenguaje) AS cantidad_lenguajes FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND lenguaje <> '' GROUP BY id_usuario;

-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes ORDER BY LENGTH(lenguaje) DESC LIMIT 1;

-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- Tu respuesta aquí

SELECT id_usuario, CONCAT(nombre, ' ', apellido) AS nombre_completo FROM usuarios_lenguajes;
-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- Tu respuesta aquí

SELECT COUNT(DISTINCT lenguaje) FROM usuarios_lenguajes WHERE edad > 25
-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- Tu respuesta aquí
SELECT edad, GROUP_CONCAT(id_usuario ORDER BY id_usuario ASC) AS usuarios_con_misma_edad FROM usuarios_lenguajes GROUP BY edad HAVING COUNT(*) > 1;

-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad < 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, email FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND lenguaje <> '';

-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE apellido LIKE 'G%';

-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, MIN(LENGTH(lenguaje)) AS longitud_minima FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' GROUP BY id_usuario;

-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE edad > 30 ORDER BY LENGTH(lenguaje) ASC LIMIT 1;


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- Tu respuesta aquí

SELECT id_usuario, nombre, apellido, lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND lenguaje <> '' ORDER BY lenguaje;
-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- Tu respuesta aquí

SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad BETWEEN 20 AND 25 AND lenguaje IS NOT NULL AND lenguaje <> '';

-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE lenguaje <> 'SQL' OR lenguaje IS NULL;


-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes WHERE edad >= 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;

-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí

SELECT id_usuario, nombre, apellido, edad, (edad - (SELECT AVG(edad) FROM usuarios_lenguajes)) AS diferencia_edad FROM usuarios_lenguajes;

-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE '%Script%';

-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- Tu respuesta aquí

SELECT id_usuario, nombre, LENGTH(nombre) AS longitud_nombre FROM usuarios_lenguajes WHERE nombre IS NOT NULL AND nombre <> '';
-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes ORDER BY id_usuario DESC LIMIT 1;

-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí

SELECT id_usuario, nombre, apellido, edad, (SELECT SUM(edad) FROM usuarios_lenguajes) AS suma_edades FROM usuarios_lenguajes;
-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí

SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%' AND edad < 28;