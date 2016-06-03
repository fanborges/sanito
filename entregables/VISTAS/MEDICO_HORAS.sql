--Vista MEDICO_HORAS
--Muestra las horas de consulta por médico.
--Soluciona el requerimiento número 1: Total en horas de consulta realizadas por medico.
CREATE OR REPLACE VIEW MEDICO_HORAS
AS
SELECT M.NOMBRE , I.PATERNO , I.MATERNO, SUM(I.DURACION) HORAS FROM INFORMACION_COMPLETA I 
INNER JOIN MEDICO M
ON I.IDMEDICO=M.IDMEDICO
GROUP BY M.NOMBRE, I.PATERNO, I.MATERNO;
