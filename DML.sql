INSERT INTO ROL (ROL_ID, ROL_NOMB) VALUES
(1, 'Admin'),
(2, 'Usuario'),
(3, 'Reclutador');

INSERT INTO DEPARTAMENTO (DEPAR_ID, DEPAR_NOMB) VALUES
(1, 'Bogotá, D.C.'), (2, 'Antioquia'), (3, 'Cundinamarca'), (4, 'Valle del Cauca'), (5, 'Amazonas'),
(6, 'Arauca'), (7, 'Atlántico'), (8, 'Bolívar'), (9, 'Boyacá'),(10, 'Caldas'),
(11, 'Caquetá'), (12, 'Casanare'), (13, 'Cauca'), (14, 'Cesar'), (15, 'Chocó'),
(16, 'Córdoba'), (17, 'Guainía'), (18, 'Guaviare'), (19, 'Huila'), (20, 'La Guajira'),
(21, 'Magdalena'), (22, 'Meta'), (23, 'Nariño'), (24, 'Norte de Santander'),(25, 'Putumayo'),
(26, 'Quindío'), (27, 'Risaralda'), (28, 'San Andrés y Providencia'), (29, 'Santander'), (30, 'Sucre'),
(31, 'Tolima'), (32, 'Vaupés'), (33, 'Vichada');

INSERT INTO CATEGORIA_EMPR (CATEG_ID, NOMB_CATEG, DESCRIPCION) VALUES
(1, 'Tecnología', 'Empresas dedicadas a desarrollo de software y servicios TI'),
(2, 'Salud', 'Instituciones de atención médica y servicios de salud'),
(3, 'Educación', 'Organizaciones dedicadas a procesos educativos'),
(4, 'Finanzas', 'Entidades bancarias y de servicios financieros'),
(5, 'Comercio', 'Comercios al por mayor y por menor');

INSERT INTO VALORACION (VALR_ID, DESCRIPCION, PUNTUACION) VALUES
(1, 'Excelente', 5),
(2, 'Muy Buena', 4),
(3, 'Buena', 3),
(4, 'Regular', 2), # TOCA RELACIONAR EL ASPIRANTE A LA VALORACION
(5, 'Mala', 1);

INSERT INTO DISCAPACIDAD (DISCAP_ID, NOMB_DISCAPACIDAD) VALUES
(1, 'Visual'),
(2, 'Auditiva'),
(3, 'Motora');

INSERT INTO GENERO (GENR_ID, TIP_GENR) VALUES
(1, 1),  -- MACULINO
(2, 0);  -- FEMENINO

INSERT INTO NIVEL_EDUCATIVO (N_EDU_ID, NOMB_NIV_EDU) VALUES
(1, 'Primaria'),(2, 'Secundaria'),(3, 'Técnico'),
(4, 'Tecnológico'),(5, 'Universitario'),(6, 'Postgrado');

INSERT INTO INSTITUCION (NOMBRE, CIUDAD, DEPARTAMENTO, PAIS) VALUES
('Universidad Nacional de Colombia', 'Bogotá, D.C.', 'Cundinamarca', 'Colombia'),
('Universidad de Antioquia','Medellín','Antioquia','Colombia'),
('Universidad del Valle','Cali','Valle del Cauca','Colombia'),
('Instituto Tecnológico de Monterrey','Ciudad de México','Ciudad de México','México'),
('Universidad de Buenos Aires','Buenos Aires','Buenos Aires', 'Argentina'); # TOCA PROCEDIMIENTO ALM PARA QUE LO AGREGUE EL USUARIO

INSERT INTO TIPO_CONTRATO (TIP_CONT_ID, NOMB_CONT) VALUES
(1, 'Término Fijo'),
(2, 'Término Indefinido'),
(3, 'Practicante'),
(4, 'Aprendiz'),
(5, 'Prestación de Servicios');

-- 11. MODALIDAD: modalidades de trabajo
INSERT INTO MODALIDAD (MODAL_ID, NOMB_MODAL) VALUES
    (1, 'Presencial'),
    (2, 'Remoto'),
    (3, 'Híbrido');

-- 12. BENEFICIOS: beneficios que puede ofrecer una oferta de trabajo
INSERT INTO BENEFICIOS (BENEF_ID, NOMB_BENEFICIO) VALUES
    (1, 'Seguro de Salud'),
    (2, 'Auxilio de Transporte'),
    (3, 'Auxilio Educativo'),
    (4, 'Comedor'),
    (5, 'Bonificación por Desempeño');

-- 13. ESTADOS: estados de una postulación
INSERT INTO ESTADOS (ESTAD_ID, NOMB_ESTADO) VALUES
    (1, 'Pendiente'),
    (2, 'Aceptado'),
    (3, 'Rechazado'),
    (4, 'En Entrevista'),
    (5, 'Contratado');
