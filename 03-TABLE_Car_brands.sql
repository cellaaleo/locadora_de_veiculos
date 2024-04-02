-- TAREFA 4 - Construa uma query SQL para criar a tabela CAR_BRANDS no banco de dados e insira os dados indicados:

CREATE TABLE CAR_BRANDS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    BRAND_NAME VARCHAR(32) NOT NULL
    );

INSERT INTO CAR_BRANDS (BRAND_NAME)
    VALUES  ('Chevrolet'),
            ('Toyota'),
            ('Hyundai'),
            ('Volkswagen'),
            ('Jeep'),
            ('Renault'),
            ('Honda'),
            ('Fiat');