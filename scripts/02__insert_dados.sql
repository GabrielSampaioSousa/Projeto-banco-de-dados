INSERT INTO departamentos (nome) VALUES
('Tecnologia'),
('Recursos Humanos'),
('Financeiro');

INSERT INTO cargos (nome) VALUES
('Gerente'),
('Desenvolvedor'),
('Analista');

INSERT INTO usuarios
(nome, email, id_departamento, id_cargo)
VALUES
('João Silva', 'joao@email.com', 1, 1),
('Maria Santos', 'maria@email.com', 1, 2),
('Pedro Souza', 'pedro@email.com', 2, 3);

INSERT INTO projetos
(nome, descricao, id_usuario)
VALUES
('Sistema de Vendas', 'Sistema para controle de vendas', 1),
('Aplicativo Interno', 'Aplicativo para funcionários', 2);

INSERT INTO atividades
(descricao, status, id_projeto)
VALUES
('Criar banco de dados', 'Concluída', 1),
('Desenvolver login', 'Em andamento', 1),
('Realizar testes', 'Pendente', 2);

INSERT INTO permissoes (nome, tipo) VALUES
('Acessar projeto', 'ACESSO'),
('Executar atividade', 'EXECUCAO');

INSERT INTO usuario_permissoes (id_usuario, id_permissao) VALUES
(1, 1),
(2, 2),
(3, 1);
