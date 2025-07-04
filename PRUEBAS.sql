USE `workable`;

# CREACION DE ENTIDADES Y TRIGGERS

CALL `P_CREATE_EMPRESA`(
  'Tech Solutions S.A.',
  'Empresa de desarrollo de software innovadora.',
  'Calle 100 # 15-20',
  1,
  1
);

SELECT EMPRE_ID, NOMBRE, PUNTUACION_PROMEDIO FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.';

CALL `P_CREATE_USUARIO`(
  'Laura',
  'Gomez',
  'claveSegura123',
  'Av. Siempre Viva 742',
  'laura.gomez@techsol.com',
  'laura.reclutador',
  3101234567,
  '1988-05-15',
  'http://example.com/laura.jpg',
  0,
  1,
  1,
  1,
  1
);

CALL `P_CREATE_USUARIO`(
  'Pedro',
  'Martinez',
  'otraClave456',
  'Carrera 5 # 12-34',
  'pedro.m@mail.com',
  'pedro.aspirante',
  3209876543,
  '1995-11-20',
  'http://example.com/pedro.jpg',
  1,
  2,
  NULL,
  2,
  1
);

SELECT U.USR_ID, U.NOMBRE, U.APELLIDO, R.NOMBRE AS Rol
FROM USUARIO AS U
JOIN ROL AS R ON U.ROL_ID = R.ROL_ID;

CALL `P_STORE_VALORACION`(
  (SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'laura.reclutador'),
  (SELECT EMPRE_ID FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.'),
  4.5,
  'Excelente empresa para trabajar.'
);

SELECT EMPRE_ID, NOMBRE, PUNTUACION_PROMEDIO FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.';

CALL `P_STORE_VALORACION`(
  (SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'laura.reclutador'),
  (SELECT EMPRE_ID FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.'),
  3.0,
  'Buena empresa, pero con oportunidades de mejora.'
);

SELECT EMPRE_ID, NOMBRE, PUNTUACION_PROMEDIO FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.';

CALL `P_CREATE_OFERTA`(
  (SELECT EMPRE_ID FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.'),
  'Desarrollador Backend Junior',
  'Desarrollo y mantenimiento de APIs con Node.js',
  'Calle 100 # 15-20',
  NULL,
  '2024-12-31',
  1,
  2,
  1
);

SELECT OFER_ID, NOMBRE, FECHA_PUBLI FROM OFERTA WHERE NOMBRE = 'Desarrollador Backend Junior';


# PRUEBA DE FUNCIONALIDA

CALL `P_ASSIGN_OFERTA_BENEFICIO`((SELECT OFER_ID FROM OFERTA WHERE NOMBRE = 'Desarrollador Backend Junior'), 1);
CALL `P_ASSIGN_OFERTA_BENEFICIO`((SELECT OFER_ID FROM OFERTA WHERE NOMBRE = 'Desarrollador Backend Junior'), 2);

CALL `P_CREATE_POSTULACION`(
  (SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante'),
  (SELECT OFER_ID FROM OFERTA WHERE NOMBRE = 'Desarrollador Backend Junior')
);

CALL `P_UPDATE_POSTULACION_ESTADO`(
  (SELECT POSTUL_ID FROM POSTULACIONES WHERE USR_ID = (SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante')),
  2,
  (SELECT EMPRE_ID FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.')
);

CALL `P_ASSING_DISCAPACIDAD`((SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante'), 1);
CALL `P_ASSING_DISCAPACIDAD`((SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante'), 3);

CALL `P_CREATE_ESTUDIO`(
  (SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante'),
  'Ingeniería de Sistemas',
  '2015-08-01',
  '2020-06-30',
  'http://example.com/certificado_pedro.pdf',
  (SELECT INSTI_ID FROM INSTITUCION WHERE NOMBRE = 'Universidad Nacional de Colombia - Sede Bogotá'),
  5
);

SELECT NOMBRE, POPULARIDAD FROM INSTITUCION WHERE NOMBRE = 'Universidad Nacional de Colombia - Sede Bogotá';

CALL `P_CREATE_EXPERIENCIA`(
  (SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante'),
  'Desarrollador Web',
  'SoftwareCorp',
  '2021-01-15',
  '2023-07-31',
  'Desarrollo de aplicaciones full-stack.',
  'Bogota D.C.',
  'Colombia'
);


# CONSULTAS A FUNCIONES

SELECT F_CHECK_LOGIN_CREDENTIALS('laura.reclutador', 'claveSegura123') AS LoginLaura;
SELECT F_CHECK_LOGIN_CREDENTIALS('pedro.aspirante', 'otraClave456') AS LoginPedro;
SELECT F_CHECK_LOGIN_CREDENTIALS('usuario_inexistente', 'password') AS LoginInvalido;

SELECT F_GET_USER_ROLE_NAME((SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'laura.reclutador')) AS RolLaura;
SELECT F_GET_USER_ROLE_NAME((SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante')) AS RolPedro;

SELECT F_GET_USER_TOTAL_EXPERIENCE_MONTHS((SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante')) AS MesesExperienciaPedro;

SELECT F_COUNT_ACTIVE_OFFERS_BY_COMPANY((SELECT EMPRE_ID FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.')) AS OfertasActivasTechSol;

SELECT F_GET_APPLICATIONS_COUNT_FOR_OFFER((SELECT OFER_ID FROM OFERTA WHERE NOMBRE = 'Desarrollador Backend Junior')) AS PostulacionesDevJr;

SELECT F_CHECK_USERNAME_EXISTS('laura.reclutador') AS LauraExiste;
SELECT F_CHECK_USERNAME_EXISTS('no_existe') AS NoExiste;

SELECT F_CHECK_EMAIL_EXISTS('pedro.m@mail.com') AS PedroEmailExiste;
SELECT F_CHECK_EMAIL_EXISTS('no.email@test.com') AS NoEmailExiste;

SELECT F_COUNT_COMPANY_APPLICATIONS_BY_STATUS(
  (SELECT EMPRE_ID FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.'),
  'Aceptado'
) AS PostulacionesAceptadasTechSol;


# CONSULTAS A VISTAS

SELECT * FROM V_EMPRESAS_DETALLE_GEOGRAFICO;
SELECT * FROM V_USUARIOS_PERFIL_COMPLETO;
SELECT * FROM V_OFERTAS_DETALLE_COMPLETO;
SELECT * FROM V_ASPIRANTES_CON_DISCAPACIDADES;
SELECT * FROM V_OFERTAS_CON_TODOS_BENEFICIOS;
SELECT * FROM V_POSTULACIONES_HISTORIAL_COMPLETO;
SELECT * FROM V_RECLUTADORES_POR_EMPRESA;
SELECT * FROM V_ESTUDIOS_DETALLE_USUARIO;
SELECT * FROM V_EXPERIENCIAS_DETALLE_USUARIO;


# LIMINACIONES PARA LIMPIEZA Y TRIGGERS

CALL `P_DELETE_VALORACION`(
  (SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'laura.reclutador'),
  (SELECT EMPRE_ID FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.')
);

SELECT EMPRE_ID, NOMBRE, PUNTUACION_PROMEDIO FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.';

CALL `P_DELETE_ESTUDIO`(
  (SELECT ESTUD_ID FROM ESTUDIO WHERE USR_ID = (SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante') AND NOMBRE_PROGRAMA = 'Ingeniería de Sistemas'),
  (SELECT USR_ID FROM USUARIO WHERE USR_NAME = 'pedro.aspirante')
);

SELECT NOMBRE, POPULARIDAD FROM INSTITUCION WHERE NOMBRE = 'Universidad Nacional de Colombia - Sede Bogotá';

CALL `P_DELETE_OFERTA`(
  (SELECT OFER_ID FROM OFERTA WHERE NOMBRE = 'Desarrollador Backend Junior'),
  (SELECT EMPRE_ID FROM EMPRESA WHERE NOMBRE = 'Tech Solutions S.A.')
);

SELECT 'Ofertas despues de borrar:' AS Categoria;
SELECT * FROM OFERTA;

SELECT 'Beneficios de oferta despues de borrar oferta:' AS Categoria;
SELECT * FROM OFERTA_BENEFICIOS;

SELECT 'Postulaciones despues de borrar oferta:' AS Categoria;
SELECT * FROM POSTULACIONES;