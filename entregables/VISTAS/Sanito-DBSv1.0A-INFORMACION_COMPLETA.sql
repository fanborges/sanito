--Vista INFORMACION_COMPLETA
--Muestra la información de todas las tablas.
--Contribuye a la solución de los problemas establecidos
--por los requerimientos.
CREATE OR REPLACE VIEW INFORMACION_COMPLETA
AS
SELECT E.NOMBRE ESPECIALIDAD
,M.IDMEDICO
,M.IDESPECIALIDAD
,M.NOMBRE
,M.PATERNO
,M.MATERNO
,M.IDCONSULTA
,M.FECHA
,M.DURACION
,M.PRECIO

FROM MEDICO_Y_CONSULTAS M
INNER JOIN ESPECIALIDAD E
ON M.IDESPECIALIDAD=E.IDESPECIALIDAD;