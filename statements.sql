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
//estrictamente igual

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

Pedro	22

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- Tu respuesta aquí


SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad DESC;

Ana	35
Adrian	34
Daniel	33
Maria	32
Raquel	32
Javier	31
Laura	30
Hector	30
Elena	29
Carmen	29
Juan	28
Miguel	28
Alejandro	28
Alberto	28
Luis	27
Sofia	26
Isabel	26
Carlos	25
Paula	24
Pedro	22



-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad > 28;

10

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%';

4	Laura	Fernandez	laura.fernandez@example.com	30	C++
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
18	Hector	Ortega	hector.ortega@example.com	30	Perl
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell




-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- Tu respuesta aquí
SELECT lenguaje, COUNT(*) AS cantidad FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY cantidad DESC LIMIT 1;


Java	1




-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript' ORDER BY edad DESC LIMIT 1;

9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
					


-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'Python';


1

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- Tu respuesta aquí
SELECT nombre, apellido, GROUP_CONCAT(lenguaje ORDER BY lenguaje ASC) AS lenguajes FROM usuarios_lenguajes GROUP BY id_usuario;
Juan	Gomez	Java
Maria	Lopez	JavaScript
Carlos	Rodriguez	Python
Laura	Fernandez	C++
Pedro	Martinez	Ruby
Ana	Hernandez	SQL
Miguel	Perez	PHP
Sofia	Garcia	Swift
Javier	Diaz	TypeScript
Luis	Sanchez	Go
Elena	Moreno	C#
Daniel	Romero	HTML
Paula	Torres	CSS
Alejandro	Ruiz	R
Carmen	Vega	Kotlin
Adrian	Molina	Objective-C
Isabel	Gutierrez	Scala
Hector	Ortega	Perl
Raquel	Serrano	Shell
Alberto	Reyes	VB.NET


-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example%';


1	Juan	Gomez	juan.gomez@example.com	28	Java
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
7	Miguel	Perez	miguel.perez@example.com	28	PHP
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
11	Elena	Moreno	elena.moreno@example.com	29	C#
12	Daniel	Romero	daniel.romero@example.com	33	HTML
13	Paula	Torres	paula.torres@example.com	24	CSS
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
18	Hector	Ortega	hector.ortega@example.com	30	Perl
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET


-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35 AND lenguaje IS NOT NULL AND lenguaje <> '';

1	Juan	Gomez	juan.gomez@example.com	28	Java
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
7	Miguel	Perez	miguel.perez@example.com	28	PHP
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
11	Elena	Moreno	elena.moreno@example.com	29	C#
12	Daniel	Romero	daniel.romero@example.com	33	HTML
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
18	Hector	Ortega	hector.ortega@example.com	30	Perl
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET


-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;

1


-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, COUNT(lenguaje) AS cantidad_lenguajes FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND lenguaje <> '' GROUP BY id_usuario;

1	Juan	Gomez	1
2	Maria	Lopez	1
3	Carlos	Rodriguez	1
4	Laura	Fernandez	1
5	Pedro	Martinez	1
6	Ana	Hernandez	1
7	Miguel	Perez	1
8	Sofia	Garcia	1
9	Javier	Diaz	1
10	Luis	Sanchez	1
11	Elena	Moreno	1
12	Daniel	Romero	1
13	Paula	Torres	1
14	Alejandro	Ruiz	1
15	Carmen	Vega	1
16	Adrian	Molina	1
17	Isabel	Gutierrez	1
18	Hector	Ortega	1
19	Raquel	Serrano	1
20	Alberto	Reyes	1

-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes ORDER BY LENGTH(lenguaje) DESC LIMIT 1;

Objective-C

-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- Tu respuesta aquí

SELECT id_usuario, CONCAT(nombre, ' ', apellido) AS nombre_completo FROM usuarios_lenguajes;

1	Juan Gomez
2	Maria Lopez
3	Carlos Rodriguez
4	Laura Fernandez
5	Pedro Martinez
6	Ana Hernandez
7	Miguel Perez
8	Sofia Garcia
9	Javier Diaz
10	Luis Sanchez
11	Elena Moreno
12	Daniel Romero
13	Paula Torres
14	Alejandro Ruiz
15	Carmen Vega
16	Adrian Molina
17	Isabel Gutierrez
18	Hector Ortega
19	Raquel Serrano
20	Alberto Reyes


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- Tu respuesta aquí

SELECT COUNT(DISTINCT lenguaje) FROM usuarios_lenguajes WHERE edad > 25


17






-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- Tu respuesta aquí
SELECT edad, GROUP_CONCAT(id_usuario ORDER BY id_usuario ASC); 


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad < 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;

20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
					
-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, email FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND lenguaje <> '';

1	Juan	Gomez	juan.gomez@example.com
2	Maria	Lopez	maria.lopez@example.com
3	Carlos	Rodriguez	carlos.rodriguez@example.com
4	Laura	Fernandez	laura.fernandez@example.com
5	Pedro	Martinez	pedro.martinez@example.com
6	Ana	Hernandez	ana.hernandez@example.com
7	Miguel	Perez	miguel.perez@example.com
8	Sofia	Garcia	sofia.garcia@example.com
9	Javier	Diaz	javier.diaz@example.com
10	Luis	Sanchez	luis.sanchez@example.com
11	Elena	Moreno	elena.moreno@example.com
12	Daniel	Romero	daniel.romero@example.com
13	Paula	Torres	paula.torres@example.com
14	Alejandro	Ruiz	alejandro.ruiz@example.com
15	Carmen	Vega	carmen.vega@example.com
16	Adrian	Molina	adrian.molina@example.com
17	Isabel	Gutierrez	isabel.gutierrez@example.com
18	Hector	Ortega	hector.ortega@example.com
19	Raquel	Serrano	raquel.serrano@example.com
20	Alberto	Reyes	alberto.reyes@example.com



-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE apellido LIKE 'G%';

3

-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, MIN(LENGTH(lenguaje)) AS longitud_minima FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' GROUP BY id_usuario;

1	Juan	Gomez	4
2	Maria	Lopez	10



-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE edad > 30 ORDER BY LENGTH(lenguaje) ASC LIMIT 1;
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
					

-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- Tu respuesta aquí

SELECT id_usuario, nombre, apellido, lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND lenguaje <> '' ORDER BY lenguaje;

11	Elena	Moreno	C#
4	Laura	Fernandez	C++
13	Paula	Torres	CSS
10	Luis	Sanchez	Go
12	Daniel	Romero	HTML
1	Juan	Gomez	Java
2	Maria	Lopez	JavaScript
15	Carmen	Vega	Kotlin
16	Adrian	Molina	Objective-C
18	Hector	Ortega	Perl
7	Miguel	Perez	PHP
3	Carlos	Rodriguez	Python
14	Alejandro	Ruiz	R
5	Pedro	Martinez	Ruby
17	Isabel	Gutierrez	Scala
19	Raquel	Serrano	Shell
6	Ana	Hernandez	SQL
8	Sofia	Garcia	Swift
9	Javier	Diaz	TypeScript
20	Alberto	Reyes	VB.NET


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- Tu respuesta aquí

SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad BETWEEN 20 AND 25 AND lenguaje IS NOT NULL AND lenguaje <> '';


3
-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE lenguaje <> 'SQL' OR lenguaje IS NULL;

1	Juan	Gomez	juan.gomez@example.com	28	Java
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
7	Miguel	Perez	miguel.perez@example.com	28	PHP
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
11	Elena	Moreno	elena.moreno@example.com	29	C#
12	Daniel	Romero	daniel.romero@example.com	33	HTML
13	Paula	Torres	paula.torres@example.com	24	CSS
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
18	Hector	Ortega	hector.ortega@example.com	30	Perl
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET



-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes WHERE edad >= 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;

Objective-C

-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí

SELECT id_usuario, nombre, apellido, edad, (edad - (SELECT AVG(edad) FROM usuarios_lenguajes)) AS diferencia_edad FROM usuarios_lenguajes;

1	Juan	Gomez	28	-0.8500
2	Maria	Lopez	32	3.1500
3	Carlos	Rodriguez	25	-3.8500
4	Laura	Fernandez	30	1.1500
5	Pedro	Martinez	22	-6.8500
6	Ana	Hernandez	35	6.1500
7	Miguel	Perez	28	-0.8500
8	Sofia	Garcia	26	-2.8500
9	Javier	Diaz	31	2.1500
10	Luis	Sanchez	27	-1.8500
11	Elena	Moreno	29	0.1500
12	Daniel	Romero	33	4.1500
13	Paula	Torres	24	-4.8500
14	Alejandro	Ruiz	28	-0.8500
15	Carmen	Vega	29	0.1500
16	Adrian	Molina	34	5.1500
17	Isabel	Gutierrez	26	-2.8500
18	Hector	Ortega	30	1.1500
19	Raquel	Serrano	32	3.1500
20	Alberto	Reyes	28	-0.8500


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE '%Script%';


2
-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- Tu respuesta aquí

SELECT id_usuario, nombre, LENGTH(nombre) AS longitud_nombre FROM usuarios_lenguajes WHERE nombre IS NOT NULL AND nombre <> '';

1	Juan	4
2	Maria	5
3	Carlos	6
4	Laura	5
5	Pedro	5
6	Ana	3
7	Miguel	6
8	Sofia	5
9	Javier	6
10	Luis	4
11	Elena	5
12	Daniel	6
13	Paula	5
14	Alejandro	9
15	Carmen	6
16	Adrian	6
17	Isabel	6
18	Hector	6
19	Raquel	6
20	Alberto	7


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes ORDER BY id_usuario DESC LIMIT 1;

VB.NET

-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí

SELECT id_usuario, nombre, apellido, edad, (SELECT SUM(edad) FROM usuarios_lenguajes) AS suma_edades FROM usuarios_lenguajes;

1	Juan	Gomez	28	577
2	Maria	Lopez	32	577
3	Carlos	Rodriguez	25	577
4	Laura	Fernandez	30	577
5	Pedro	Martinez	22	577
6	Ana	Hernandez	35	577
7	Miguel	Perez	28	577
8	Sofia	Garcia	26	577
9	Javier	Diaz	31	577
10	Luis	Sanchez	27	577
11	Elena	Moreno	29	577
12	Daniel	Romero	33	577
13	Paula	Torres	24	577
14	Alejandro	Ruiz	28	577
15	Carmen	Vega	29	577
16	Adrian	Molina	34	577
17	Isabel	Gutierrez	26	577
18	Hector	Ortega	30	577
19	Raquel	Serrano	32	577
20	Alberto	Reyes	28	577


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí

SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%' AND edad < 28;


1

