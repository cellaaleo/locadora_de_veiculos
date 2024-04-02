-- 20 - Construa uma consulta capaz de exibir todas as locações realizadas, assim como também o nome do
-- cliente, do automóvel e do funcionário vinculados em cada locação
SELECT  L.ID AS 'Protocolo',
        L.START_DATE AS 'Início',
        L.END_DATE AS 'Vencimento',
        CL.NAME AS 'Cliente',
        CA.NAME AS 'Automóvel',
        E.NAME AS 'Funcionário' FROM LOCATIONS AS L
    JOIN CUSTOMERS AS CL ON (L.CUSTOMER_ID = CL.ID)
    JOIN CARS AS CA ON (L.CAR_ID = CA.ID)
    JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);


-- 21 - Construa uma consulta capaz de exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(*) AS 'Nº de locações realizadas' FROM LOCATIONS;

-- 22 - Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.
SELECT  MAX(TOTAL) AS 'Locação de maior valor',
        L.ID AS 'Protocolo',
        CL.NAME AS 'Cliente',
        CA.NAME AS 'Automóvel',
        E.NAME AS 'Funcionário' FROM LOCATIONS AS L
    JOIN CUSTOMERS AS CL ON (L.CUSTOMER_ID = CL.ID)
    JOIN CARS AS CA ON (L.CAR_ID = CA.ID)
    JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);

-- 23 - Construa uma consulta capaz de exibir todas as locações realizadas, entre as datas “2022-05-20” a 
-- “2022-12-25”
SELECT  L.ID AS 'Protocolo',
        L.START_DATE AS 'Início',
        L.END_DATE AS 'Vencimento',
        CL.NAME AS 'Cliente',
        CA.NAME AS 'Carro',
        E.NAME AS 'Funcionário' FROM LOCATIONS AS L
    JOIN CUSTOMERS AS CL ON (L.CUSTOMER_ID = CL.ID)
    JOIN CARS AS CA ON (L.CAR_ID = CA.ID)
    JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID) 
    WHERE L.START_DATE BETWEEN '2022-05-20' AND '2022-12-25';