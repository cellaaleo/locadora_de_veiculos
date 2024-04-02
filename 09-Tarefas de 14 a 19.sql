-- 14 - Construa uma consulta capaz de exibir somente o name, lastname e email dos clientes que moram no estado de SP
SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS WHERE STATE = 'SP';

-- 15 - Construa uma consulta capaz de exibir somente os automóveis que estão com o status “Liberado”
SELECT * FROM CARS WHERE STATUS = 'Liberado';

-- 16 - Construa uma consulta capaz de exibir todos os automóveis do ano 2016.
SELECT * FROM CARS WHERE YEAR = 2016;

-- 17 - Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos
SELECT  E.NAME AS 'Funcionário',
        P.DESCRIPTION AS 'Cargo' FROM EMPLOYEES AS E
    JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID);

-- 18 - Construa uma consulta capaz de exibir somente os funcionários que realizaram mais ou igual a 2 locações.
SELECT E.NAME AS 'Funcionário',
        COUNT(*) AS 'qte. de locações' FROM EMPLOYEES AS E
    JOIN LOCATIONS AS L ON (L.EMPLOYEE_ID = E.ID) GROUP BY NAME HAVING COUNT(*) >= 2;

-- 19 - Construa uma consulta capaz de exibir somente os clientes que realizaram mais ou igual a 2 locações.
SELECT  C.NAME AS 'Cliente', 
        COUNT(*) AS 'qte. de locações' FROM CUSTOMERS AS C
    JOIN LOCATIONS AS L ON (C.ID = L.CUSTOMER_ID) GROUP BY NAME HAVING COUNT(*) >= 2;