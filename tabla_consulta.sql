CREATE TABLE CONSULTA(
IDCONSULTA NUMBER NOT NULL,
HORA NUMBER NOT NULL,
PRECIO NUMBER NOT NULL,
FECHA DATE NOT NULL,
IDMEDICO NUMBER NOT NULL,
PRIMARY KEY (IDCONSULTA),
FOREIGN KEY (IDMEDICO) REFERENCES MEDICO
);