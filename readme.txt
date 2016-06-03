

 .----------------.  .----------------.  .-----------------.
| .--------------. || .--------------. || .--------------. |
| |    _______   | || |      __      | || | ____  _____  | |
| |   /  ___  |  | || |     /  \     | || ||_   \|_   _| | |
| |  |  (__ \_|  | || |    / /\ \    | || |  |   \ | |   | |
| |   '.___`-.   | || |   / ____ \   | || |  | |\ \| |   | |
| |  |`\____) |  | || | _/ /    \ \_ | || | _| |_\   |_  | |
| |  |_______.'  | || ||____|  |____|| || ||_____|\____| | |
| |              | || |              | || |              | |
| '--------------' || '--------------' || '--------------' |
 '----------------'  '----------------'  '----------------' 

		LUIS MART�N CARIELO ARREDONDO.

		ROBERTO VILLARREAL SAUCEDO.
		
		LUIS CLEMENTE Z��IGA FLORES.	
 .----------------.  .----------------.  .----------------. 
| .--------------. || .--------------. || .--------------. |
| |     _____    | || |  _________   | || |     ____     | |
| |    |_   _|   | || | |  _   _  |  | || |   .'    `.   | |
| |      | |     | || | |_/ | | \_|  | || |  /  .--.  \  | |
| |      | |     | || |     | |      | || |  | |    | |  | |
| |     _| |_    | || |    _| |_     | || |  \  `--'  /  | |
| |    |_____|   | || |   |_____|    | || |   `.____.'   | |
| |              | || |              | || |              | |
| '--------------' || '--------------' || '--------------' |
 '----------------'  '----------------'  '----------------' 

---- SANITO V1.0A --- LIBERADO Y LISTO PARA SU PRIMER
---- IMPLEMENTACI�N.

INSTRUCCIONES PARA LA IMPLEMENTACI�N DE LA BASE DE DATOS DE LA 
CL�NICA SANITO.
+-----------------------------------------------------------+
+El prop�sito de este proyecto es el de dise�ar una base de + 
+datos donde se pueda almacenar la informaci�n de las consu-+
+ltas m�dicas por especialidad que se realizan en la cl�nica+ 
+�SANITO�. La direcci�n de la cl�nica desea obtener de la   +
+base de dato la siguiente informaci�n:                     +
+                                                           +
+    1. Total en horas de consulta realizadas por m�dico.   +
+    2. Total en horas de consulta realizadas por           +   
+	especialidad.                                       +
+    3. Ingreso por consultas en un rango de fechas         +
+       por cada especialidad.                              +
+    4. Ingreso por m�dico en un rango de fechas            +
+       ordenado de mayor a menor.                          + 
+                                                           +  
+-----------------------------------------------------------+
-------------------------------------------------------------



+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+              I. CREACI�N Y POBLADO DE                     + 
+			LAS TABLAS                          + 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

I.1. En la carpeta TABLAS se encuentran los scripts de la 
creaci�n de las 3 tablas que se utilizar�n.

I.1.2. Generar la tabla ESPECIALIDAD.
I.1.3. Generar la tabla MEDICO.
I.1.4. Generar la tabla CONSULTA.

                           ***
						
I.2. En la carpeta DATA se encuentran los scripts para poblar
las tablas.
I.2.1. Poblar la tabla ESPECIALIDAD con el script 
	especialidades.sql
I.2.2. Poblar la tabla MEDICO con el script medicos.sql
I.2.3. Poblar la tabla CONSULTA con el script consultas.sql


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+                II. CREACI�N DE LAS                        + 
+		    	VISTAS   	                    + 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


II.1. En la carpeta VISTAS encontramos las vistas necesarias
para satisfacer los requerimientos.

II.2. Generar la vista MEDICO_Y_CONSULTAS a partir del script
	MEDICO_YCONSULTAS.sql
II.3. Generar la vista INFORMACION_COMPLETA a partir del
	script INFORMACION_COMPLETA.sql 
II.4. Generar la vista MEDICO_HORAS a partir del
	script MEDICO_HORAS.sql **(1)
II.5. Generar la vista ESPECIALIDAD_HORAS a partir
	del script ESPECIALIDAD_HORAS.sql **(2)


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+              III.CREACI�N DE LOS                          + 
+		   PROCEDIMIENTOS   	                    + 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


III.1. En la carpeta PROCEDIMIENTOS encontramos los
       procedimientos necesarios para satisfacer 
       los requerimientos.

III.2. Generar el procedimiento INGRESOS_ESPECIALIDAD_FECHAS
 	a partir del script 
	INGRESOS_ESPECIALIDAD_FECHA.sql **(3)

III.3. Generar el procedimiento INGRESOS_MEDICO_FECHAS
	a partir del script
	INGRESOS_MEDICO_FECHAS **(4)

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+               IV.CREACI�N DEL                             + 
+		    TRIGGER     	                    + 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

IV.1 En la carpeta DISPARADORES se encuentra el disparador 
necesario para cumplir con los requerimientos.

IV.2 Generar el disparador MENSAJE_DE_AGREGADO a partir del
     script MENSAJE_DE_AGREGADO.sql.





Nota: Absolutamente todos los scripts contienen un comentario
inicial que indica lo que hacen y si utilizan otros artefactos.






 .----------------.  .----------------.  .----------------. 
| .--------------. || .--------------. || .--------------. |
| |      _       | || |    NOTAS     | || |       _      | |
| |     \ \      | || |    ______    | || |      / /     | |
| |      \ \     | || |   |______|   | || |     / /      | |
| |       > >    | || |    ______    | || |    < <       | |
| |      / /     | || |   |______|   | || |     \ \      | |
| |     /_/      | || |              | || |      \_\     | |
| |              | || |   FINALES    | || |              | |
| '--------------' || '--------------' || '--------------' |
 '----------------'  '----------------'  '----------------' 


DEPRECATED: LAS SIGUIENTES FUNCIONES YA NO SON UTILIZADAS 
PARA LA SATISFACCI�N DE LOS REQUERIMIENTOS, PERO SE QUEDAN
COMO PARTE DEL PAQUETE DE C�DIGO PARA REFERENCIAS DE USO 
DE FUNCIONES DENTRO DEL PROYECTO.






+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+                    CREACI�N DE LAS                        + 
+		    	FUNCIONES	                    + 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

IV.1. En la carpeta FUNCIONES se encuentran las funciones 
necesarias para satisfacer los requerimientos.


II.1.1. Generar la funci�n TOTAL_DE_HORAS_POR_MEDICO a 
	partir del archivo horas_por_medico.sql
II.1.2. generar la funci�n TOTAL_INGRESOS a partir del
	archivo TOTAL_INGRESOS.sql


