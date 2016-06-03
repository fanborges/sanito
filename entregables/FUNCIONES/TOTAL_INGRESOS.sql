--Función TOTAL_INGRESOS
--Realiza la suma de los precios de las consultas por médico
--toma como parámetro el ID del médico.
--UTILIZADO PARA REQUERIMIENTO 4: Ingreso por médico en un rango de fechas ordenado de mayor a menor.

create or replace
FUNCTION TOTAL_INGRESOS(ID NUMBER) 
RETURN NUMBER IS
TOTAL NUMBER;
BEGIN
SELECT SUM(PRECIO) INTO TOTAL
FROM CONSULTA
WHERE IDMEDICO = ID;
RETURN TOTAL;
END;