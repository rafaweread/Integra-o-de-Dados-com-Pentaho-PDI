-- Atividade 1: Atualizar os registros que existem nas duas tabelas
UPDATE A
SET
    A.Dt_Venda = B.Dt_Venda,
    A.Id_Produto = B.Id_Produto,
    A.Quantidade = B.Quantidade,
    A.Valor = B.Valor 
FROM
    dbo.Dim_Venda A
    JOIN dbo.Venda B ON A.Id_Produto = B.Id_Venda


-- Atividade 2: Inserir os registros que só existem na tabela de origem
INSERT INTO dbo.Dim_Venda
(
    Id_Venda,
    Dt_Venda,
    Id_Produto,
    Quantidade,
    Valor
)
SELECT
    A.Id_Venda, 
    A.Dt_Venda,
    A.Id_Produto,
    A.Quantidade,
    A.Valor
FROM
    dbo.Venda A
    LEFT JOIN dbo.Dim_Venda B ON A.Id_Venda = B.Id_Venda
WHERE
    B.Id_Venda IS NULL


SELECT * FROM dbo.Dim_Venda
SELECT * FROM dbo.Venda