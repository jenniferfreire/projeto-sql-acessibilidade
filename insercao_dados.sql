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
)
(	
	'Parque da Cidade',
	'Av. Verde, 100', 
	'Parque'
),
(	'Museu Histórico', 
	'Rua Antiga, 55', 
	'Museu'
),
(	'Teatro Municipal', 	
	'Praça das Artes, 22', 
	'Teatro'
),
(	'Shopping Central', 	
	'Av. Comercial, 300', 
	'Shopping'
),
(	'Universidade X', 	
	'Rua do Conhecimento, 200', 
	'Universidade'
),
(	'Hospital São Lucas', 	
	'Rua da Saúde, 10', 
	'Hospital'
),
(	'Estação Central', 	
	'Av. Ferrovia, 800', 
	'Transporte'
),
(	'Biblioteca do Saber', 	
	'Rua dos Livros, 77', 
	'Biblioteca'
),
(	'Ginásio Poliesportivo', 	
	'Av. Esportes, 99', 
	'Ginásio'
),
(	'Restaurante Inclusivo', 	
	'Rua da Gastronomia, 50', 
	'Restaurante'
);


-- Inserindo dados para tabela ACESSIBILIDADE
INSERT INTO ACESSIBILIDADE (descricao, tipo_deficiencia) VALUES
(
	'Rampa de acesso, elevador, banheiros adaptados', 
	'Física'
),
(
	'Piso tátil, elevador, vagas PCD no estacionamento', 
	'Física, Visual'
),
(
	'Equipamentos adaptados, profissionais treinados, rampa de acesso', 
	'Física, Intelectual'
),
(
	'Cardápio em braile, atendimento em Libras, banheiros adaptados', 
	'Visual, Auditiva, Física'
),
(
	'Intérprete de Libras, assentos reservados, audiodescrição', 
	'Auditiva, Visual'
),
(
	'Trilhas adaptadas, playground inclusivo, banheiros acessíveis', 
	'Física, Intelectual, Múltipla'
),
(
	'Atendimento prioritário, rampas de acesso, comunicação alternativa', 
	'Física, Intelectual, Psicossocial'
),
(
	'Carrinhos adaptados, sinalização tátil, atendimento prioritário', 
	'Física, Visual, Intelectual'
),
(
	'Salas adaptadas, professores capacitados, materiais acessíveis', 
	'Intelectual, Psicossocial'
),
(
	'Plataforma elevada, sinalização sonora, atendimento especializado', 
	'Física, Visual, Auditiva'
),
(
	'Rampas de acesso para cadeirantes', 
	'Física'
),
(
	'Elevador adaptado para PCDs', 
	'Física'
),
(
	'Banheiros adaptados', 
	'Física'
),
(
	'Sinalização em braile', 
	'Visual'
),
(
	'Atendimento em Libras', 
	'Auditiva'
),
(
	'Pisos táteis para deficientes visuais', 
	'Visual'
),
(
	'Vagas reservadas para PCDs', 
	'Física'
),
(
	'Cardápios em braile', 
	'Visual'
),
(
	'Audiodescrição em eventos', 
	'Visual'
),
(
	'Assentos preferenciais', 
	'Física, Psicossocial'
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
	(10, 10)  -- Estação Central - Plataforma elevada
	(11,11),  -- Rampas de acesso para cadeirantes
	(12,12),  -- Elevador adaptado para PCDs
	(13,13),  -- Banheiros adaptados
	(14,14),  -- Sinalização em braile
	(15,15),  -- Atendimento em Libras
	(16,16),  -- Pisos táteis para deficientes visuais
	(17,17),  -- Vagas reservadas para PCDs
	(18,18),  -- Cardápios em braile
	(19,19),  -- Audiodescrição em eventos
	(20,20),  -- Assentos preferenciais


-- Populando a tabela LOCAIS_ACESSIBILIDADE_COMPLETA
INSERT INTO LOCAIS_ACESSIBILIDADE_COMPLETA
SELECT 
    LOCAIS.id_local,
    LOCAIS.nome AS nome_local,
    LOCAIS.endereco,
    LOCAIS.categoria,
    ACESSIBILIDADE.descricao AS tipo_acessibilidade
	ACESSIBILIDADE.tipo_deficiencia 
FROM LOCAIS
JOIN LOCAIS_ACESSIBILIDADES ON LOCAIS.id_local = LOCAIS_ACESSIBILIDADES.id_local
JOIN ACESSIBILIDADE ON LOCAIS_ACESSIBILIDADES.id_acessibilidade = ACESSIBILIDADE.id_acessibilidade;