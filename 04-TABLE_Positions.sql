-- TAREFA 5 - Construa uma query SQL para criar a tabela POSITIONS e insira os cargos indicados:

CREATE TABLE POSITIONS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    DESCRIPTION VARCHAR(120) NOT NULL
    );

INSERT INTO POSITIONS (DESCRIPTION)
    VALUES  ('Gerente de vendas'),
            ('Gerente de compras'),
            ('Vendedor'),
            ('Mecânico'),
            ('Assistente Administrativo');
