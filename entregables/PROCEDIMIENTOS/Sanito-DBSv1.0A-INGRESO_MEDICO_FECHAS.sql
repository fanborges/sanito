--Procedimiento INGRESO_MEDICO_FECHAS
--Imprime en consola el ingreso obtenido por cada médico
--en el intervalo de dos fechas establecidas con anterioridad.
--Recibe como parámetros dos fechas, una de inicio y una final.
--Soluciona el requerimiento número 4: Ingreso por médico en un rango de fechas ordenado de mayor a menor.
CREATE OR REPLACE
PROCEDURE INGRESO_MEDICO_FECHAS (FECHA01 IN DATE , FECHA02 IN DATE)
IS
NUM INFORMACION_COMPLETA.PRECIO%TYPE;
NOM MEDICO.NOMBRE%TYPE;
PAT MEDICO.PATERNO%TYPE;
MAT MEDICO.MATERNO%TYPE;

CURSOR C1 IS
SELECT M.NOMBRE, M.PATERNO, M.MATERNO  
,SUM (I.PRECIO) PRECIO
FROM INFORMACION_COMPLETA I
INNER JOIN MEDICO M
ON M.IDMEDICO=I.IDMEDICO
WHERE I.FECHA BETWEEN FECHA01 AND FECHA02 GROUP BY M.NOMBRE, M.PATERNO, M.MATERNO;
BEGIN
OPEN C1;
DBMS_OUTPUT.PUT_LINE('El ingreso por médico entre ' || FECHA01 || ' y ' || FECHA02 || ' es :'); 
LOOP
FETCH C1 INTO NOM , PAT , MAT, NUM;
EXIT WHEN C1%NOTFOUND;
DBMS_OUTPUT.PUT_LINE('Médico: ' || NOM || ' ' || PAT || ' ' || MAT);
DBMS_OUTPUT.PUT_LINE('Ingresos: ' || NUM );
DBMS_OUTPUT.PUT_LINE('--------------------------------------------');
COMMIT;
END LOOP;
CLOSE C1;
END;