# Gerenciamento de Projetos

## Tema

Gerenciamento de Projetos

## Objetivo

Desenvolver uma ferramenta para gerenciamento de projetos corporativos,
permitindo controlar atividades, usuários, departamentos e permissões.

## Público-alvo

Empresas que precisam organizar seus projetos, equipes,
atividades e permissões de acesso.

## Tecnologias utilizadas

- PostgreSQL
- SQL
- GitHub

## Modelo de Dados

```mermaid
erDiagram
    DEPARTAMENTOS ||--o{ USUARIOS : possui
    CARGOS ||--o{ USUARIOS : possui
    USUARIOS ||--o{ PROJETOS : gerencia
    PROJETOS ||--o{ ATIVIDADES : possui
    USUARIOS ||--o{ USUARIO_PERMISSOES : recebe
    PERMISSOES ||--o{ USUARIO_PERMISSOES : possui

    DEPARTAMENTOS {
        int id_departamento PK
        varchar nome
    }

    CARGOS {
        int id_cargo PK
        varchar nome
    }

    USUARIOS {
        int id_usuario PK
        varchar nome
        varchar email
        int id_departamento FK
        int id_cargo FK
    }

    PROJETOS {
        int id_projeto PK
        varchar nome
        text descricao
        int id_usuario FK
    }

    ATIVIDADES {
        int id_atividade PK
        varchar descricao
        varchar status
        int id_projeto FK
    }

    PERMISSOES {
        int id_permissao PK
        varchar nome
        varchar tipo
    }

    USUARIO_PERMISSOES {
        int id_usuario FK
        int id_permissao FK
    }
