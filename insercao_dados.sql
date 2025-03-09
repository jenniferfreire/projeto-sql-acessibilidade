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
),
(
	'Shopping Cidade',
	'Av. Principal, 456',
	'Shopping'
),
(
	'Academia Movimenta',
	'Rua Fitness, 789',
	'Academia'
),
(
	'Restaurante Sabor & Saúde',
	'Av. Gastronômica, 321',
	'Restaurante'
),
(
	'Teatro Municipal',
	'Praça das Artes, 654',
	'Teatro'
),
(
	'Parque Verde',
	'Estrada Natural, 987',
	'Parque'
),
(
	'Clinica Saude Total',
	'Rua Médica, 741',
	'Clínica Médica'
),
(
	'Supermercado Econômico',
	'Av. Compras, 852',
	'Supermercado'	
),
(
	'Escola Inclusiva',
	'Rua do Saber, 369',
	'Escola'
),
(
	'Estação Central',
	'Av. Ferroviária, 159',
	'Transporte Público'
);


-- Inserindo dados para tabela ACESSIBILIDADE
INSERT INTO ACESSIBILIDADE (
	descricao
)
VALUES (
	'Rampa de acesso, elevador, banheiros adaptados'
),
(
	'Piso tátil, elevador, vagas PCD no estacionamento'
),
(
	'Equipamentos adaptados, profissionais treinados, rampa de acesso'
),
(
	'Cardápio em braile, atendimento em Libras, banheiros adaptados'
),
(
	'Intérprete de Libras, assentos reservados, audiodescrição'
),
(
	'Trilhas adaptadas, playground inclusivo, banheiros acessíveis'
),
(
	'Atendimento prioritário, rampas de acesso, comunicação alternativa'
),
(
	'Carrinhos adaptados, sinalização tátil, atendimento prioritário'	
),
(
	'Salas adaptadas, professores capacitados, materiais acessíveis'
),
(
	'Plataforma elevada, sinalização sonora, atendimento especializado'
);


-- Inserindo chaves estrangeiras na tabela LOCAIS_ACESSIBILIDADES
INSERT INTO LOCAIS_ACESSIBILIDADES (id_local, id_acessibilidade)
VALUES 
	(1, 1),  -- Biblioteca Central  - Rampa de acesso
	(2, 2),  -- Shopping Cidade - Elevador
	(3, 3),  -- Academia Movimenta - Equipamentos adaptados
	(4, 4),  -- Restaurante Sabor & Saúde - Atendimento em Libras
	(5, 5),  -- Teatro Municipal - Intérprete de Libras
	(6, 6),  -- Parque Verde - Trilhas adaptadas
	(7, 7),  -- Clinica Saude Total - Rampas de acesso
	(8, 8),  -- Supermercado Econômico - Carrinhos adaptados
	(9, 9),  -- Escola Inclusiva - Salas adaptadas, professores capacitados, materiais acessíveis
	(10, 10);  -- Estação Central - Plataforma elevada

-- Populando a tabela LOCAIS_ACESSIBILIDADE_COMPLETA
INSERT INTO LOCAIS_ACESSIBILIDADE_COMPLETA
SELECT 
    LOCAIS.id_local,
    LOCAIS.nome AS nome_local,
    LOCAIS.endereco,
    LOCAIS.categoria,
    ACESSIBILIDADE.descricao AS tipo_acessibilidade
FROM LOCAIS
JOIN LOCAIS_ACESSIBILIDADES ON LOCAIS.id_local = LOCAIS_ACESSIBILIDADES.id_local
JOIN ACESSIBILIDADE ON LOCAIS_ACESSIBILIDADES.id_acessibilidade = ACESSIBILIDADE.id_acessibilidade;