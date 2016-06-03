--función TOTAL_DE_HORAS_POR_MÉDICO
--Devuelve el total de horas que consultará un médico
--ingresando su ID
--UTILIZADO PARA REQUERIMIENTO 1: Total en horas de consulta realizadas por médico

create or replace
FUNCTION TOTAL_DE_HORAS_POR_MEDICO (ID NUMBER) 
RETURN NUMBER IS
TOTAL NUMBER;
BEGIN
SELECT SUM(DURACION) INTO TOTAL
FROM CONSULTA
WHERE IDMEDICO=ID;
RETURN TOTAL;
END;