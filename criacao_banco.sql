CREATE DATABASE "LOCAL_ACESSIBILIDADE"
    OWNER = postgres
    ENCODING = 'UTF8'
    TEMPLATE = TEMPLATE1
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Criando a tabela LOCAIS
CREATE TABLE LOCAIS (
    id_local     SERIAL,	
    nome         VARCHAR(50) NOT NULL,
    endereco     VARCHAR(100) NOT NULL,
    categoria    VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_local)
);

-- Criando a tabela ACESSIBILIDADE
CREATE TABLE ACESSIBILIDADE (
    id_acessibilidade SERIAL,
    descricao         VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_acessibilidade)
);

-- Criando a tabela de relacionamento LOCAIS_ACESSIBILIDADES
CREATE TABLE LOCAIS_ACESSIBILIDADES (
    id_local          INTEGER NOT NULL,
    id_acessibilidade INTEGER NOT NULL,
    PRIMARY KEY (id_local, id_acessibilidade),
    FOREIGN KEY (id_local) REFERENCES LOCAIS(id_local) ON DELETE CASCADE,
    FOREIGN KEY (id_acessibilidade) REFERENCES ACESSIBILIDADE(id_acessibilidade) ON DELETE CASCADE
);

-- Criando a tabela LOCAIS_ACESSIBILIDADE_COMPLETA
CREATE TABLE LOCAIS_ACESSIBILIDADE_COMPLETA (
    id_local INTEGER NOT NULL,
    nome_local VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    tipo_acessibilidade VARCHAR(50) NOT NULL
);