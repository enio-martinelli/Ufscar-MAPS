
CREATE TABLE professor(
    id_prof smallserial PRIMARY KEY,
    nome varchar not null,
    email varchar not null,
    titulo varchar not null
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
    período varchar not null
);


-- SCHEMA: createTables

-- DROP SCHEMA IF EXISTS "createTables" ;

CREATE SCHEMA IF NOT EXISTS "createTables"
    AUTHORIZATION postgres;

COMMENT ON SCHEMA "createTables"
    IS 'Criação de tabelas';
