-- Inserindo dados para tabela LOCAIS
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Biblioteca Central',
	'Rua das Letras, 123',
	'Biblioteca'
);
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Shopping Cidade',
	'Av. Principal, 456',
	'Shopping'
);
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Academia Movimenta',
	'Rua Fitness, 789',
	'Academia'
);
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Restaurante Sabor & Saúde',
	'Av. Gastronômica, 321',
	'Restaurante'
);
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Teatro Municipal',
	'Praça das Artes, 654',
	'Teatro'
);
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Parque Verde',
	'Estrada Natural, 987',
	'Parque'
);
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Clinica Saude Total',
	'Rua Médica, 741',
	'Clínica Médica'
);
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Supermercado Econômico',
	'Av. Compras, 852',
	'Supermercado'	
);
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Escola Inclusiva',
	'Rua do Saber, 369',
	'Escola'
);
INSERT INTO LOCAIS ( 
	nome, 
	endereco,
	categoria
)
VALUES (
	'Estação Central',
	'Av. Ferroviária, 159',
	'Transporte Público'
);


-- Inserindo dados para tabela ACESSIBILIDADE
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Rampa de acesso, elevador, banheiros adaptados'
);
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Piso tátil, elevador, vagas PCD no estacionamento'
);
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Equipamentos adaptados, profissionais treinados, rampa de acesso'
);
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Cardápio em braile, atendimento em Libras, banheiros adaptados'
);
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Intérprete de Libras, assentos reservados, audiodescrição'
);
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Trilhas adaptadas, playground inclusivo, banheiros acessíveis'
);
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Atendimento prioritário, rampas de acesso, comunicação alternativa'
);
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Carrinhos adaptados, sinalização tátil, atendimento prioritário'
);
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Salas adaptadas, professores capacitados, materiais acessíveis'
);
INSERT INTO ACESSIBILIDADE (
	id_acessibilidade,
	descricao
)
VALUES (
	'Plataforma elevada, sinalização sonora, atendimento especializado'
);


-- Populando a tabela LOCAIS_ACESSIBILIDADE_COMPLETA
INSERT INTO LOCAIS_ACESSIBILIDADE_COMPLETA
SELECT 
    LOCAIS.id_local,
    LOCAIS.nome AS nome_local,
    LOCAIS.endereco,
    LOCAIS.categoria,
    ACESSIBILIDADE.descricao AS tipo_acessibilidade
FROM LOCAIS
JOIN LOCAL_ACESSIBILIDADE ON LOCAIS.id_local = LOCAL_ACESSIBILIDADE.id_local
JOIN ACESSIBILIDADE ON LOCAL_ACESSIBILIDADE.id_acessibilidade = ACESSIBILIDADE.id_acessibilidade;