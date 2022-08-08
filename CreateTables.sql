
CREATE TABLE professor(
    prof_id INTEGER GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    titulo VARCHAR NOT NULL,
    
    CONSTRAINT professor_pk PRIMARY KEY (prof_id)
);

CREATE TABLE reitoria (
    reitoria_id INTEGER GENERATED ALWAYS AS IDENTITY, 
    localizacao GEOMETRY, 
    email VARCHAR NOT NULL, 

    CONSTRAINT reitoria_pk PRIMARY KEY (reitoria_id) 
);

CREATE TABLE campus (
    nome VARCHAR NOT NULL,
    campus_id INTEGER GENERATED ALWAYS AS IDENTITY,
    reitoria_id INTEGER NOT NULL, 
    localizacao GEOMETRY,
    endereco VARCHAR NOT NULL, 

    CONSTRAINT campus_pk PRIMARY KEY (campus_id, reitoria_id),
    CONSTRAINT campus_fk FOREIGN KEY (reitoria_id) REFERENCES reitoria (reitoria_id)
);

CREATE TABLE pro_reitoria(
    sigla_preitoria VARCHAR NOT NULL,
    preitoria_id INTEGER GENERATED ALWAYS AS IDENTITY,
    reitoria_id INTEGER NOT NULL,
    localizacao GEOMETRY,
    nome VARCHAR NOT NULL,
	
    CONSTRAINT pro_reitoria_pk PRIMARY KEY (preitoria_id),
    CONSTRAINT pro_reitoria_fk FOREIGN KEY (reitoria_id) REFERENCES reitoria (reitoria_id)
);

CREATE TABLE pro_reitoria_professor(
    prof_id INTEGER NOT NULL,
    preitoria_id INTEGER NOT NULL,
    período VARCHAR NOT NULL,
    cargo VARCHAR NOT NULL,
    
    CONSTRAINT pro_reitoria_professor_pk PRIMARY KEY (prof_id, preitoria_id),
    CONSTRAINT preitoria_professor__prof_id_fk FOREIGN KEY (prof_id) REFERENCES professor (prof_id),
    CONSTRAINT preitoria_professor__preitoria_id_fk FOREIGN KEY (preitoria_id) REFERENCES pro_reitoria (preitoria_id)
);

CREATE TABLE reitoria_professor(
    prof_id INTEGER NOT NULL,
    reitoria_id INTEGER NOT NULL,
    período VARCHAR NOT NULL,
    cargo VARCHAR NOT NULL,
	
    CONSTRAINT reitoria_professor_pk PRIMARY KEY (prof_id, reitoria_id),
    CONSTRAINT reitoria_professor__prof_id_fk FOREIGN KEY (prof_id) REFERENCES professor (prof_id),
    CONSTRAINT reitoria_professor__reitoria_id FOREIGN KEY (reitoria_id) REFERENCES reitoria (reitoria_id)
);

CREATE TABLE centro (
	centro_id INTEGER GENERATED ALWAYS AS IDENTITY,
	sigla_centro VARCHAR NOT NULL,
	reitoria_id INTEGER NOT NULL,
	nome VARCHAR NOT NULL,
	localizacao GEOMETRY,
	telefone VARCHAR,
	
	CONSTRAINT centro_pk PRIMARY KEY (centro_id),
	CONSTRAINT centro_fk FOREIGN KEY (reitoria_id) REFERENCES reitoria (reitoria_id)
);


CREATE TABLE departamento (
    dept_sigla VARCHAR NOT NULL,
    dept_id INTEGER GENERATED ALWAYS AS IDENTITY,
    centro_id INTEGER NOT NULL,
    nome VARCHAR NOT NULL,
    localizacao GEOMETRY,
    site VARCHAR,
    telefone VARCHAR NOT NULL,
    email_depart VARCHAR NOT NULL,
	
    CONSTRAINT departamento_pk PRIMARY KEY (dept_id),
    CONSTRAINT departamento_fk FOREIGN KEY (centro_id) REFERENCES centro (centro_id)
    
);

CREATE TABLE departamento_professor (
	prof_id INTEGER NOT NULL,
	dept_id INTEGER NOT NULL,
	periodo VARCHAR NOT NULL,
	cargo VARCHAR NOT NULL,
	
	CONSTRAINT departamento_professor_pk PRIMARY KEY (prof_id, dept_id),
	CONSTRAINT dept_professor__prof_id_fk FOREIGN KEY (prof_id) REFERENCES professor (prof_id),
	CONSTRAINT dept_professor__dept_id_fk FOREIGN KEY (dept_id) REFERENCES departamento (dept_id)
);

CREATE TABLE centro_professor (
	prof_id INTEGER NOT NULL,
	centro_id INTEGER NOT NULL,
	periodo VARCHAR NOT NULL,
	cargo VARCHAR NOT NULL,
	
	CONSTRAINT centro_professor_pk PRIMARY KEY (prof_id, centro_id),
	CONSTRAINT centro_prof__prof_id_fk FOREIGN KEY (prof_id) REFERENCES professor (prof_id),
	CONSTRAINT centro_prof__centro_id_fk FOREIGN KEY (centro_id) REFERENCES centro (centro_id)
);


CREATE TABLE laboratorio (
	lab_id INTEGER GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR NOT NULL,
	localizacao GEOMETRY,
	sigla VARCHAR NOT NULL,
	
	CONSTRAINT laboratorio_pk PRIMARY KEY (lab_id)
);

CREATE TABLE dept_gerencia_lab (
	lab_id INTEGER NOT NULL,
	dept_id INTEGER NOT NULL,
	
	CONSTRAINT dept_gerencia_lab_pk PRIMARY KEY (lab_id, dept_id),
	CONSTRAINT dept_gerencia_lab__lab_id_fk FOREIGN KEY (lab_id) REFERENCES laboratorio (lab_id),
	CONSTRAINT dept_gerencia_lab__dept_id_fk FOREIGN KEY (dept_id) REFERENCES departamento (dept_id)
);


CREATE TABLE curso_graduacao (
	dept_id INTEGER NOT NULL,
        nome_cg VARCHAR NOT NULL,

	CONSTRAINT curso_graduacao_pk PRIMARY KEY (dept_id, nome_cg),
        CONSTRAINT curso_graduacao_fk FOREIGN KEY (dept_id) REFERENCES departamento (dept_id)
);


CREATE TABLE curso_pos_graduacao (
	dept_id INTEGER NOT NULL,
        nome_cpg VARCHAR NOT NULL,
     
	CONSTRAINT curso_posgrad_pk PRIMARY KEY (dept_id, nome_cpg),
        CONSTRAINT curso_posgrad_fk FOREIGN KEY (dept_id) REFERENCES departamento (dept_id)
);

CREATE TABLE area (
	area_id INT GENERATED ALWAYS AS IDENTITY, 
	campus_id INTEGER NOT NULL, 
	localizacao GEOMETRY, 
	nome VARCHAR NOT NULL, 

	CONSTRAINT area_pk PRIMARY KEY (area_id), 
	CONSTRAINT area_fk FOREIGN KEY (campus_id) REFERENCES campus (campus_id) 
);

CREATE TABLE esporte (
	area_id INTEGER NOT NULL, 
	esporte_praticado VARCHAR NOT NULL, 

	CONSTRAINT esporte_pk PRIMARY KEY (area_id, esporte_praticado),
	CONSTRAINT esporte_fk FOREIGN KEY (area_id) REFERENCES area (area_id)
);

CREATE TABLE lazer (
	area_id INTEGER NOT NULL,  
	capacidade VARCHAR, 

	CONSTRAINT lazer_pk PRIMARY KEY (area_id),
	CONSTRAINT lazer_fk FOREIGN KEY (area_id) REFERENCES area (area_id)
);

CREATE TABLE reserva_natural (
	area_id INTEGER NOT NULL,
	bioma VARCHAR, 

	CONSTRAINT reserva_natural_pk PRIMARY KEY (area_id),
	CONSTRAINT reserva_natural_fk FOREIGN KEY (area_id) REFERENCES area (area_id)
);

CREATE TABLE construcao (
	construcao_id INT GENERATED ALWAYS AS IDENTITY, 
	campus_id INTEGER NOT NULL, 
	localizacao GEOMETRY, 
	nome VARCHAR NOT NULL, 

	CONSTRAINT construcao_pk PRIMARY KEY (construcao_id), 
	CONSTRAINT construcao_fk FOREIGN KEY (campus_id) REFERENCES campus (campus_id) 
);

CREATE TABLE apoio_academico (
	construcao_id INTEGER NOT NULL,
	proposito VARCHAR, 

	CONSTRAINT apoio_academico_pk PRIMARY KEY (construcao_id),
	CONSTRAINT apoio_academico_fk FOREIGN KEY (construcao_id) REFERENCES construcao (construcao_id)
);

CREATE TABLE administrativo (
	construcao_id INTEGER NOT NULL, 
	funcao_administrativa VARCHAR, 

	CONSTRAINT administrativo_pk PRIMARY KEY (construcao_id),
	CONSTRAINT administrativo_fk FOREIGN KEY (construcao_id) REFERENCES construcao (construcao_id)
);

CREATE TABLE alimentacao (
	construcao_id INTEGER NOT NULL, 
	horario_funcionamento VARCHAR, 

	CONSTRAINT alimentacao_pk PRIMARY KEY (construcao_id),
	CONSTRAINT alimentacao_fk FOREIGN KEY (construcao_id) REFERENCES construcao (construcao_id)
);

CREATE TABLE transito (
	transito_id INT GENERATED ALWAYS AS IDENTITY, 
	campus_id INTEGER NOT NULL, 
	nome VARCHAR NOT NULL, 
	localizacao GEOMETRY, 
	tipo VARCHAR NOT NULL, 

	CONSTRAINT transito_pk PRIMARY KEY (transito_id, campus_id),
	CONSTRAINT transito_fk FOREIGN KEY (campus_id) REFERENCES campus (campus_id)
);

-- SCHEMA: createTables

-- DROP SCHEMA IF EXISTS "createTables" ;

CREATE SCHEMA IF NOT EXISTS "createTables"
    AUTHORIZATION postgres;

COMMENT ON SCHEMA "createTables"
    IS 'Criação de tabelas';
