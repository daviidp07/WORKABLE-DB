INSERT INTO ROL VALUES
(1,'Admin'),(2,'Aspirante'),(3,'Reclutador');

INSERT INTO DEPARTAMENTO VALUES
(1,'BOGOTA D.C'),(2,'ANTIOQUIA');

INSERT INTO MUNICIPIO VALUES
(1,'BOGOTA D.C', 1),
(2, 'MEDELLIN', 2),(3, 'BELLO', 2),(4, 'ITAGUI', 2),(5, 'ENVIGADO', 2),(6, 'RIONEGRO', 2);

INSERT INTO CATEGORIA_EMPRE VALUES
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

INSERT INTO INSTITUCION (NOMBRE, DEPAR_ID) VALUES
('Universidad de Antioquia', 2),('Universidad Nacional de Colombia - Sede Medellín', 2),('Universidad EAFIT', 2),
('Universidad Pontificia Bolivariana - Sede Medellín', 2),('Universidad de Medellín', 2),('Politécnico Colombiano Jaime Isaza Cadavid', 2),
('Institución Universitaria ITM (Instituto Tecnológico Metropolitano)', 2),('Institución Universitaria Pascual Bravo', 2),('Institución Universitaria Colegio Mayor de Antioquia', 2),
('Universidad CES', 2),('Corporación Universitaria Lasallista', 2),('Universidad de San Buenaventura - Sede Medellín', 2),
('Universidad Católica de Oriente', 2),('Escuela de Ingeniería de Antioquia (EIA)', 2),('Fundación Universitaria María Cano', 2),
('Colegio San Ignacio de Loyola', 2),('The Columbus School', 2),('Colegio Alemán Medellín', 2),
('Colegio Montessori', 2),('Colegio Marymount', 2),('Colegio Corazonista', 2),
('Corporación Universitaria Remington', 2),('Fundación Universitaria Autónoma de las Américas', 2),('Politécnico Grancolombiano - Sede Medellín', 2),
('Servicio Nacional de Aprendizaje (SENA) - Regional Antioquia', 2),

('Universidad Nacional de Colombia - Sede Bogotá', 1),('Universidad de los Andes', 1),('Pontificia Universidad Javeriana', 1),
('Universidad Externado de Colombia', 1),('Universidad del Rosario', 1),('Universidad de La Sabana', 1),
('Universidad Distrital Francisco José de Caldas', 1),('CESA (Colegio de Estudios Superiores de Administración)', 1),('Universidad Jorge Tadeo Lozano', 1),
('Universidad Piloto de Colombia', 1),('Universidad Militar Nueva Granada', 1),('Escuela Colombiana de Ingeniería Julio Garavito', 1),
('Politécnico Grancolombiano', 1),('Fundación Universitaria Konrad Lorenz', 1),('Universidad Central', 1),
('Universidad de América', 1),('Colegio San Carlos', 1),('Gimnasio Moderno', 1),
('Colegio Los Nogales', 1),('Colegio Nueva Granada', 1),('Liceo Francés Louis Pasteur', 1),
('Colegio Anglo Colombiano', 1),('Gimnasio Femenino', 1),('Universidad Santo Tomás', 1),
('Servicio Nacional de Aprendizaje (SENA) - Direccion General', 1),

('OTRO', NULL);

INSERT INTO TIPO_CONTRATO VALUES
(1,'Término Fijo'),(2,'Término Indefinido'),(3,'Practicante'),
(4,'Aprendiz'),(5,'Prestación de Servicios');

INSERT INTO MODALIDAD VALUES
(1,'Presencial'),(2,'Remoto'),(3,'Híbrido');

INSERT INTO BENEFICIOS VALUES
(1,'Seguro de Salud'),(2,'Auxilio de Transporte'),(3,'Auxilio Educativo'),(4,'Bonificación por Desempeño');

INSERT INTO ESTADOS VALUES
(1,'Pendiente'),(2,'Aceptado'),(3,'Rechazado');

