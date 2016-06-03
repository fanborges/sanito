--Vista ESPECIALIDAD_HORAS
--Muestra las horas de consulta por especialidad.
--Soluciona el requerimiento número 2: Total en horas de consulta realizadas por especialidad.
CREATE OR REPLACE VIEW ESPECIALIDAD_HORAS
AS
SELECT E.NOMBRE , SUM(I.DURACION) HORAS FROM INFORMACION_COMPLETA I 
INNER JOIN ESPECIALIDAD E
ON I.IDESPECIALIDAD=E.IDESPECIALIDAD
GROUP BY E.NOMBRE;