CREATE TABLE IF NOT EXISTS departamentos (
    id_departamento SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS cargos (
    id_cargo SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    id_departamento INT NOT NULL,
    id_cargo INT NOT NULL,

    FOREIGN KEY (id_departamento)
        REFERENCES departamentos(id_departamento),

    FOREIGN KEY (id_cargo)
        REFERENCES cargos(id_cargo)
);

CREATE TABLE IF NOT EXISTS projetos (
    id_projeto SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    id_usuario INT NOT NULL,

    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario)
);

CREATE TABLE IF NOT EXISTS atividades (
    id_atividade SERIAL PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL,
    status VARCHAR(30) NOT NULL,
    id_projeto INT NOT NULL,

    FOREIGN KEY (id_projeto)
        REFERENCES projetos(id_projeto)
);

CREATE TABLE IF NOT EXISTS permissoes (
    id_permissao SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    tipo VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuario_permissoes (
    id_usuario INT NOT NULL,
    id_permissao INT NOT NULL,

    PRIMARY KEY (id_usuario, id_permissao),

    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario),

    FOREIGN KEY (id_permissao)
        REFERENCES permissoes(id_permissao)
);
