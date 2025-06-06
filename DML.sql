INSERT INTO ROL VALUES
(1,'Admin'),(2,'Usuario'),(3,'Reclutador');

INSERT INTO DEPARTAMENTO VALUES
(1,'BOGOTA D.C'),(2,'ANTIOQUIA'),(3,'CUNDINAMARCA'),(4,'VALLE DEL CAUCA'),(5,'ATLANTICO');

INSERT INTO MUNICIPIO VALUES
(1,'BOGOTA D.C', 1),
(2,'MEDELLIN',2),(3,'BELLO',2),(4,'ITAGUI',2),(5,'ENVIGADO',2),(6,'RIONEGRO',2),
(7,'SOACHA',3),(8,'ZIPAQUIRA',3),(9,'CHIA',3),(10,'FACATATIVA',3),(11,'GIRARDOT',3),
(12,'CALI',4),(13,'PALMIRA',4),(14,'BUENAVENTURA',4),(15,'TULUA',4),(16,'BUGA',4),
(17,'BARRANQUILLA',5),(18,'SOLEDAD',5),(19,'MALAMBO',5),(20,'SABANALARGA',5),(21,'GALAPA',5);

INSERT INTO CATEGORIA_EMPR VALUES
(1, 'TECNOLOGIA', 'Empresas dedicadas a desarrollo de software y servicios TI'),
(2, 'SALUD', 'Instituciones de atención médica y servicios de salud'),
(3, 'EDUCACION', 'Organizaciones dedicadas a procesos educativos'),
(4, 'FINANZAS', 'Entidades bancarias y de servicios financieros'),
(5, 'COMERCIO', 'Comercios al por mayor y por menor'),
(6, 'ALIMENTICIOS', 'Empresas dedicadas a la producción y distribución de alimentos y bebidas');

INSERT INTO TIPO_DOCUMENTO VALUES
(1, 'C.C'),(2,'T.I');

INSERT INTO DISCAPACIDAD VALUES
(1,'Visual'),
(2,'Auditiva'),
(3,'Motora');

INSERT INTO GENERO VALUES
(1, 'MASCULINO'),
(0, 'FEMENINO');

INSERT INTO NIVEL_EDUCATIVO VALUES
(1,'Primaria'),(2,'Secundaria'),(3,'Técnico'),
(4,'Tecnológico'),(5,'Universitario'),(6,'Postgrado');

INSERT INTO TIPO_CONTRATO VALUES
(1,'Término Fijo'),(2,'Término Indefinido'),(3,'Practicante'),
(4,'Aprendiz'),(5,'Prestación de Servicios');

INSERT INTO MODALIDAD VALUES
(1,'Presencial'),(2,'Remoto'),(3,'Híbrido');

INSERT INTO BENEFICIOS VALUES
(1,'Seguro de Salud'),(2,'Auxilio de Transporte'),(3,'Auxilio Educativo'),(4,'Bonificación por Desempeño');

INSERT INTO ESTADOS VALUES
(1,'Pendiente'),(2,'Aceptado'),(3,'Rechazado');

