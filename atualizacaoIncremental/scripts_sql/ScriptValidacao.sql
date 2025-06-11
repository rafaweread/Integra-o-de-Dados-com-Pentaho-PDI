SELECT
	l."data" ,
	l.empresa,
	l.pessoa,
	l.quantidade,
	l.preco_unit,
	l.valor,
	l.valor,
	l.usuario
FROM
	lancto l
WHERE l.DATA BETWEEN '2018-01-01' AND '2018-03-06'
	
	
	
SELECT
	max(l."data") AS ultima_venda
FROM
	lancto l;
	
	
SELECT * FROM lancto l LIMIT 10;



SELECT
	l.grid,
	date(l."data") ,
	l.empresa,
	l.pessoa,
	l.quantidade,
	l.preco_unit,
	l.valor,
	l.valor,
	l.usuario
FROM
	lancto l
WHERE
	DATE(l.DATA) BETWEEN '2018-01-01' AND '2018-03-06'
	
	
	
	
--- Identificar quantidade de linhas 	
SELECT COUNT(*) AS qtd FROM prod.lancto l 

--- Selecionar uma linha usando a clausula where
SELECT
	*
FROM
	prod.lancto l
WHERE grid = 23588083;	
	
--- Deletar 5 registro para que possa testar o Insert
DELETE FROM prod.lancto l
WHERE grid IN (
    SELECT grid
    FROM prod.lancto l 
    ORDER BY date ASC
    LIMIT 5
);	


--- Modificando valor especifico para atualizar os dados com step Insert / Update
UPDATE prod.lancto l 
SET valor = 58.55
WHERE grid = 23588083;