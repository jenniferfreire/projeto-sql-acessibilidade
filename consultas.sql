-- Listar todos os locais e seus recursos de acessibilidade
SELECT 
    LOCAIS.id_local,
    LOCAIS.nome AS nome_local,
    LOCAIS.endereco,
    LOCAIS.categoria,
    ACESSIBILIDADE.descricao AS tipo_acessibilidade
FROM LOCAIS
JOIN LOCAIS_ACESSIBILIDADES ON LOCAIS.id_local = LOCAIS_ACESSIBILIDADES.id_local
JOIN ACESSIBILIDADE ON LOCAIS_ACESSIBILIDADES.id_acessibilidade = ACESSIBILIDADE.id_acessibilidade;


-- Buscar locais que tenham um recurso específico
SELECT
    nome_local,
    endereco,
    categoria,
    tipo_acessibilidade
FROM LOCAIS_ACESSIBILIDADE_COMPLETA
WHERE tipo_acessibilidade ILIKE '%libras%'; -- Substituir pelo termo desejado
-- Caso queira realizar a busca por mais de um termo ao mesmo tempo:
--   OR tipo_acessibilidade ILIKE '%elevador%';


-- Contar quantos locais têm determinado recurso de acessibilidade
SELECT COUNT(DISTINCT id_local) AS "Qtde. Locais Acessívies"
FROM LOCAIS_ACESSIBILIDADE_COMPLETA
WHERE tipo_acessibilidade ILIKE '%libras%'; -- Substituir pelo termo desejado