
CREATE TABLE professor(
    id_prof smallserial PRIMARY KEY,
    nome varchar not null,
    email varchar not null,
    titulo varchar not null
);

CREATE TABLE reitoria (
    sigla_reitoria VARCHAR NOT NULL, 
    localizacao GEOMETRY, 
    email VARCHAR NOT NULL, 

    CONSTRAINT reitoria_pk PRIMARY KEY (sigla_reitoria) 
);

CREATE TABLE campus (
    nome_campus VARCHAR NOT NULL, 
    sigla_reitoria VARCHAR NOT NULL, 
    localizacao GEOMETRY, 
    endereco VARCHAR NOT NULL, 

    CONSTRAINT campus_pk PRIMARY KEY (nome_campus, sigla_reitoria) 
);

CREATE TABLE pro_reitoria(
    sigla_pro_reitoria varchar(15) not null PRIMARY KEY,
    localizacao geometry,
    nome varchar not null
);

CREATE TABLE pro_reitoria_professor(
    id_prof integer not null,
    sigla_pro_reitoria varchar(15) not null,
    período varchar not null,
    cargo varchar not null,
    foreign key(id_prof) references professor(id_prof),
    foreign key(sigla_pro_reitoria) references pro_reitoria(sigla_pro_reitoria)
);

CREATE TABLE reitoria_professor(
    id_prof integer not null,
    sigla_reitoria varchar(15) not null,
    cargo varchar not null,
    período varchar not null,
    foreign key(id_prof) references professor(id_prof),
    foreign key(sigla_reitoria) references reitoria(sigla_reitoria)
);

CREATE TABLE centro (
	sigla_centro VARCHAR NOT NULL,
	sigla_reitoria VARCHAR NOT NULL,
	nome VARCHAR NOT NULL,
	localizacao GEOMETRY,
	telefone VARCHAR NOT NULL,
	
	CONSTRAINT centro_pk PRIMARY KEY (sigla_centro)
);

--DEPARTAMENTO

CREATE TABLE departamento (
	sigla_departamento VARCHAR NOT NULL,
    sigla_centro VARCHAR NOT NULL,
    nome_depart VARCHAR NOT NULL,
    localizacao_depart GEOMETRY,
    site_depart VARCHAR,
    tel_depart VARCHAR NOT NULL,
	email_depart VARCHAR NOT NULL,
     
	--DEFINIÇÃO DAS RESTRIÇÕES
        --definição da restrição de chave primária
	CONSTRAINT departamento_pk PRIMARY KEY (sigla_departamento),
        --definição da restrição de chave estrangeira
    CONSTRAINT departamento_fk FOREIGN KEY (sigla_centro) REFERENCES centro(sigla_centro)
    
);

CREATE TABLE departamento_professor (
	id_prof INTEGER NOT NULL,
	sigla_depart VARCHAR NOT NULL,
	periodo VARCHAR NOT NULL,
	cargo VARCHAR NOT NULL,
	foreign key (id_prof) references professor(id_prof),
	foreign key (sigla_depart) references centro(sigla_depart)
);

CREATE TABLE centro_professor (
	id_prof INTEGER NOT NULL,
	sigla_centro VARCHAR NOT NULL,
	periodo VARCHAR NOT NULL,
	cargo VARCHAR NOT NULL,
	foreign key (id_prof) references professor(id_prof),
	foreign key (sigla_centro) references centro(sigla_centro)
);


--CURSOS_GRADUAÇÃO

CREATE TABLE curso_graduacao (
	sigla_departamento VARCHAR NOT NULL,
    nome_cg VARCHAR NOT NULL,
     
	--DEFINIÇÃO DAS RESTRIÇÕES
        --definição da restrição de chave primária
	CONSTRAINT curso_graduacao_pk PRIMARY KEY (sigla_departamento, nome_cg),
        --definição da restrição de chave estrangeira
    CONSTRAINT curso_graduacao_fk FOREIGN KEY (sigla_departamento) REFERENCES departamento(sigla_departamento)
);

--CURSOS_POS_GRADUAÇÃO

CREATE TABLE curso_pos_graduacao (
	sigla_departamento VARCHAR NOT NULL,
    nome_cpg VARCHAR NOT NULL,
     
	--DEFINIÇÃO DAS RESTRIÇÕES
        --definição da restrição de chave primária
	CONSTRAINT curso_posgrad_pk PRIMARY KEY (sigla_departamento, nome_cpg),
        --definição da restrição de chave estrangeira
    CONSTRAINT curso_pos_grad_fk FOREIGN KEY (sigla_departamento) REFERENCES departamento(sigla_departamento)
);

CREATE TABLE area (
	codigo_area INT GENERATED ALWAYS AS IDENTITY, 
	nome_campus VARCHAR NOT NULL, 
	local_area GEOMETRY, 
	nome_area VARCHAR NOT NULL, 

	CONSTRAINT area_pk PRIMARY KEY (codigo_area), 
	FOREIGN KEY (nome_campus) REFERENCES campus (nome_campus) 
);

CREATE TABLE esporte (
	codigo_area INT GENERATED ALWAYS AS IDENTITY, 
	local_area GEOMETRY, 
	nome_area VARCHAR NOT NULL, 

	CONSTRAINT esporte PRIMARY KEY (codigo_area, local_area, nome_area) 
);

CREATE TABLE esporte_praticado (
	codigo_area INT GENERATED ALWAYS AS IDENTITY, 
	local_area GEOMETRY, 
	nome_area VARCHAR NOT NULL, 
	nome_esporte VARCHAR NOT NULL, 

	CONSTRAINT esporte_praticado_pk PRIMARY KEY (codigo_area, local_area, nome_area) 
);

CREATE TABLE lazer (
	codigo_area INT GENERATED ALWAYS AS IDENTITY, 
	local_area GEOMETRY, 
	nome_area VARCHAR NOT NULL, 
	capacidade VARCHAR, 

	CONSTRAINT lazer_pk PRIMARY KEY (codigo_area, local_area, nome_area) 
);

CREATE TABLE reserva_natural (
	codigo_area INT GENERATED ALWAYS AS IDENTITY, 
	local_area GEOMETRY, 
	nome_area VARCHAR NOT NULL, 
	bioma VARCHAR, 

	CONSTRAINT reserva_ natural PRIMARY KEY (codigo_area, local_area, nome_area) 
);

CREATE TABLE construcao (
	codigo_construcao INT GENERATED ALWAYS AS IDENTITY, 
	nome_campus VARCHAR NOT NULL, 
	local_construcao GEOMETRY, 
	nome_construcao VARCHAR NOT NULL, 

	CONSTRAINT construcao_pk PRIMARY KEY (codigo_construcao), 
	FOREIGN KEY (nome_campus) REFERENCES campus (nome_campus) 
);

CREATE TABLE apoio_academico (
	codigo_construcao INT GENERATED ALWAYS AS IDENTITY, 
	local_construcao GEOMETRY, 
	nome_construcao VARCHAR NOT NULL, 
	proposito VARCHAR, 

	CONSTRAINT apoio_academico_pk PRIMARY KEY (codigo_construcao) 
);

CREATE TABLE administrativo (
	codigo_construcao INT GENERATED ALWAYS AS IDENTITY, 
	local_construcao GEOMETRY, 
	nome_construcao VARCHAR NOT NULL, 
	funcao_administrativa NOT NULL, 

	CONSTRAINT administrativo_pk PRIMARY KEY (codigo_construcao) 
);

CREATE TABLE alimentacao (
	codigo_construcao INT GENERATED ALWAYS AS IDENTITY, 
	local_construcao GEOMETRY, 
	nome_construcao VARCHAR NOT NULL, 
	horario_funcionamento VARCHAR, 

	CONSTRAINT alimentacao_pk PRIMARY KEY (codigo_construcao) 
);

CREATE TABLE transito (
	codigo_transito INT GENERATED ALWAYS AS IDENTITY, 
	nome_campus VARCHAR NOT NULL, 
	nome_transito VARCHAR NOT NULL, 
	local_transito GEOMETRY, 
	tipo VARCHAR NOT NULL, 

	CONSTRAINT transito_pk PRIMARY KEY (codigo_transito, nome_campus) 
);

-- SCHEMA: createTables

-- DROP SCHEMA IF EXISTS "createTables" ;

CREATE SCHEMA IF NOT EXISTS "createTables"
    AUTHORIZATION postgres;

COMMENT ON SCHEMA "createTables"
    IS 'Criação de tabelas';
