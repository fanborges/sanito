--Procedimiento INGRESO_ESPECIALIDAD_FECHAS
--Imprime en consola el ingreso obtenido por especialidad
--en el rango de dos fechas establecidas con anterioridad.
--Recibe como parámetro dos fechas, una de inicio y una final.
--Soluciona el requerimiento número 3: Ingreso por consultas en un rango de fechas por cada especialidad.
--
CREATE OR REPLACE PROCEDURE INGRESO_ESPECIALIDAD_FECHAS(FECHA01 IN DATE, FECHA02 IN DATE) 
IS
NUM INFORMACION_COMPLETA.PRECIO%TYPE;
NOM ESPECIALIDAD.NOMBRE%TYPE;
CURSOR C1 IS
SELECT E.NOMBRE  
,SUM (I.PRECIO) PRECIO
FROM INFORMACION_COMPLETA I
INNER JOIN ESPECIALIDAD E
ON E.IDESPECIALIDAD=I.IDESPECIALIDAD
WHERE I.FECHA BETWEEN FECHA01 AND FECHA02 
GROUP BY E.NOMBRE;
BEGIN
OPEN C1;
DBMS_OUTPUT.PUT_LINE('El ingreso entre ' || FECHA01 || ' y ' || FECHA02 || ' es :'); 
LOOP
FETCH C1 INTO NOM , NUM;
EXIT WHEN C1%NOTFOUND;
DBMS_OUTPUT.PUT_LINE('Especialidad: ' || NOM);
DBMS_OUTPUT.PUT_LINE('Ingresos: ' || NUM );
DBMS_OUTPUT.PUT_LINE('--------------------------------------------');
COMMIT;
END LOOP;
CLOSE C1;
END;