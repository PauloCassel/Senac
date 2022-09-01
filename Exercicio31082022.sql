USE senac;

CREATE TABLE PRODS
(codigo NUMERIC(3) NOT NULL,
nome VARCHAR(50) NOT NULL,
preco NUMERIC (5,2) NOT NULL,
tipo CHAR(1) NULL,

CONSTRAINT PK1 PRIMARY KEY (codigo));

INSERT INTO PRODS VALUES
( 10, 'HD', 200, 'C'),
( 11, 'Memoria', 250, 'C'),
( 12, 'Impressora', 600, 'P'),
( 13, 'Processador', 600, 'C'),
( 14, 'DVD-BW', 2, 'S'),
( 15, 'Papel A4', 19, 'S'),
( 16, 'Scanner', 199, 'P');

SELECT nome FROM PRODS;

SELECT tipo FROM PRODS;

SELECT tipo FROM PRODS WHERE tipo = 'C';
SELECT tipo FROM PRODS WHERE tipo = 'S';
SELECT tipo FROM PRODS WHERE tipo = 'P';

SELECT SUM(preco/7) AS mediaTotal FROM PRODS;

SELECT SUM(preco/2) AS mediaS FROM PRODS WHERE tipo = 'S';

SELECT SUM(preco/3) AS mediaC FROM PRODS WHERE tipo = 'C';
SELECT SUM(preco/2) AS mediaS FROM PRODS WHERE tipo = 'S';
SELECT SUM(preco/2) AS mediaP FROM PRODS WHERE tipo = 'P';
