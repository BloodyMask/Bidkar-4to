CREATE DATABASE asistencias;
USE asistencia;

/*Tabla Alumnos*/
CREATE TABLE alumno
(
    noControl   VARCHAR(14),
    aPaterno    VARCHAR(50),
    aMaterno    VARCHAR(50),
    nombre      VARCHAR(50),
    grupo       VARCHAR(5),
    PRIMARY KEY(noControl)
) ENGINE = MyISam

CREATE TABLE grupo_alumno
(
    grupo       VARCHAR(5),
    semestre    TINYINT,
    noControl   VARCHAR(14),
    generacion  VARCHAR(9)
    PRIMARY KEY(grupo, semestre, noControl, generacion)
)

CREATE TABLE grupo
(
    semestre        TINYINT,
    grupo           VARCHAR(5),
    especialidad    VARCHAR(2),
    generacion      VARCHAR(9),
    ciclo           VARCHAR(6)
    PRIMARY KEY(semestre, grupo, generacion)
)

CREATE TABLE horario
(
    semestre    TINYINT,
    grupo       VARCHAR(5),
    generacion  VARCHAR(9),
    dia         TINYINT,
    horaInicio  DATETIME,
    duracion    TINYINT
    PRIMARY KEY(semestre, grupo, generacion, dia, horaInicio)
)

CREATE TABLE asistencia
(
    noControl   VARCHAR(14),
    semestre    TINYINT,
    semana      TINYINT,
    dia         TINYINT,
    registro    DATETIME
    PRIMARY KEY(noControl, semestre, semana, dia, registro)
)

CREATE TABLE asistencia_justificada
(
    noControl   VARCHAR(14),
    semestre    TINYINT,
    semana      TINYINT,
    dia         TINYINT,
    registro    DATETIME,
    motivo      VARCHAR(250) /* descripcion del porque no pudo asistir */
    PRIMARY KEY(noControl, semestre, semana, dia, registro)
)


















