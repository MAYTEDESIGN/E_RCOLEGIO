USE [COLEGIO];  -- Reemplaza con el nombre de tu base de datos

-- Crear la tabla Inscripcion primero
CREATE TABLE Inscripcion (
    id INT PRIMARY KEY IDENTITY(1,1),
    Fecha_creacion DATE NOT NULL,
    Fecha_matricula DATE NOT NULL,
    Usuario_creacion VARCHAR(50),
    Usuario_matricula VARCHAR(50),
    Estado_gestion VARCHAR(20),
    Periodo VARCHAR(20)
);

-- Crear la tabla Personas
CREATE TABLE Personas (
    id INT PRIMARY KEY IDENTITY(1,1),
    PrimerNombre VARCHAR(50) NOT NULL,
    SegundoNombre VARCHAR(50),
    PrimerApellido VARCHAR(50) NOT NULL,
    SegundoApellido VARCHAR(50),
    TipoDocumento VARCHAR(20) NOT NULL,
    NumeroDocumento VARCHAR(20) UNIQUE NOT NULL,
    Genero CHAR(1) NOT NULL,
    Telefono VARCHAR(20),
    Celular VARCHAR(20),
    Email VARCHAR(100),
    Direccion VARCHAR(150),
    Empresa VARCHAR(100),
    Profesion VARCHAR(100),
    Cargo VARCHAR(100),
    TipoPersona VARCHAR(20) NOT NULL,
    TipoEstudiante VARCHAR(20),
    id_inscripcion INT,
    CONSTRAINT FK_Personas_Inscripcion FOREIGN KEY (id_inscripcion) REFERENCES Inscripcion(id)
);

-- Crear la tabla Cursos
CREATE TABLE Cursos (
    id_cursos INT PRIMARY KEY IDENTITY(1,1),
    Nombres VARCHAR(100) NOT NULL,
    Estados VARCHAR(20)
);

-- Crear la tabla Enfermeria
CREATE TABLE Enfermeria (
    id INT PRIMARY KEY IDENTITY(1,1),
    Nombre_EPS VARCHAR(100),
    Salud_Prepagada VARCHAR(100),
    Grupo_sanguineo VARCHAR(5),
    Factor_RH CHAR(2),
    Autorizacion_medicamentos VARCHAR(100),
    Alergias VARCHAR(100),
    Peso DECIMAL(5, 2),
    Estatura DECIMAL(5, 2)
);

-- Crear la tabla Enfermedad
CREATE TABLE Enfermedad (
    id INT PRIMARY KEY IDENTITY(1,1),
    Fechas_sintomas DATE,
    Medicina_que_toma VARCHAR(100),
    Fecha_recuperacion DATE
);

-- Crear la tabla Tipos_Documentos
CREATE TABLE Tipos_Documentos (
    id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL
);

-- Crear la tabla Periodo_inscripcion
CREATE TABLE Periodo_inscripcion (
    id INT PRIMARY KEY IDENTITY(1,1),
    periodo_de_inicio DATE NOT NULL,
    periodo_fin DATE NOT NULL
);

-- Crear la tabla Parametros
CREATE TABLE Parametros (
    id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Valor VARCHAR(100)
);

-- Crear la tabla Documentos_periodo
CREATE TABLE Documentos_periodo (
    id INT PRIMARY KEY IDENTITY(1,1),
    Certificado_grado VARCHAR(100)
);

-- Crear la tabla Documentos_inscripcion
CREATE TABLE Documentos_inscripcion (
    id INT PRIMARY KEY IDENTITY(1,1),
    Certificado_grado VARCHAR(100)
);

-- Crear la tabla Cursos_parametros
CREATE TABLE Cursos_parametros (
    id INT PRIMARY KEY IDENTITY(1,1),
    id_cursos INT,
    Cupos INT,
    CONSTRAINT FK_Cursos_parametros_Cursos FOREIGN KEY (id_cursos) REFERENCES Cursos(id_cursos)
);
