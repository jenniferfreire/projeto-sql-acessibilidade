# 📌 Projeto: Local Acessibilidade  

Este projeto foi desenvolvido para armazenar e consultar informações sobre locais e seus recursos de acessibilidade, facilitando a busca por ambientes mais inclusivos.

## 🏗 Estrutura do Projeto  

O banco de dados contém as seguintes tabelas:  

- **Locais**: Armazena informações sobre os locais cadastrados.  
- **Acessibilidade**: Contém os tipos de acessibilidade disponíveis.  
- **Local_Acessibilidade**: Tabela de junção que relaciona os locais com os seus respectivos recursos de acessibilidade.  
- **Locais_Acessibilidade_Completa**: Uma visão agregada dos dados, unindo as informações das tabelas anteriores.  

## 🔧 Tecnologias Utilizadas  

- **PostgreSQL**  
- **Draw.io (diagrams.net)** para modelagem do banco de dados  

## 📊 Diagrama Entidade-Relacionamento (DER)  

O modelo do banco de dados foi representado através do seguinte diagrama:  

[Diagrama ER](https://drive.google.com/file/d/194u1--YzXQ3O5UYxoGEZ4WTTJ7Po0ZuP/view?usp=drive_link)  

## 🗄 Scripts SQL  

### 🎯 Criação do Banco de Dados  

```sql
CREATE DATABASE LOCAL_ACESSIBILIDADE
    OWNER = postgres
    ENCODING = 'UTF8'
    TEMPLATE = template1
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
```

### 📌 Criação das Tabelas  

```sql
CREATE TABLE LOCAIS (
    id_local SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

CREATE TABLE ACESSIBILIDADE (
    id_acessibilidade SERIAL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE LOCAL_ACESSIBILIDADE (
    id_local INT REFERENCES LOCAIS(id_local),
    id_acessibilidade INT REFERENCES ACESSIBILIDADE(id_acessibilidade),
    PRIMARY KEY (id_local, id_acessibilidade)
);
```

### 📥 Inserção de Dados  

```sql
INSERT INTO LOCAIS (nome, endereco, categoria) VALUES
('Biblioteca Central', 'Rua das Letras, 123', 'Biblioteca'),
('Shopping Acessível', 'Avenida Inclusiva, 45', 'Comércio');

INSERT INTO ACESSIBILIDADE (descricao) VALUES
('Rampa de acesso'),
('Banheiro adaptado');

INSERT INTO LOCAL_ACESSIBILIDADE (id_local, id_acessibilidade) VALUES
(1, 1),
(1, 2),
(2, 1);
```

### 🔎 Consultas Úteis  

- **Listar locais e seus recursos de acessibilidade**  

```sql
SELECT * FROM locais_acessibilidade_completa;
```

- **Buscar locais com determinado recurso**  

```sql
SELECT nome_local, endereco, categoria, tipo_acessibilidade
FROM locais_acessibilidade_completa
WHERE tipo_acessibilidade ILIKE '%rampa%';
```

- **Contar quantos locais têm determinado recurso de acessibilidade**  

```sql
SELECT COUNT(*) AS "Qtde. Locais Acessíveis" 
FROM locais_acessibilidade_completa
WHERE tipo_acessibilidade ILIKE '%rampa%';
```

## 🚀 Como Rodar o Projeto  

1. Clone este repositório:  

   ```sh
   git clone https://github.com/seu-usuario/local-acessibilidade.git
   cd local-acessibilidade
   ```

2. Execute os scripts SQL no PostgreSQL.  

3. Faça consultas conforme necessário.  
