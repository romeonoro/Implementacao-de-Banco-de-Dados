--Declarando variáveis
DECLARE @valor INT,
		@texto VARCHAR(40),
		@data DATE,
		@nada MONEY

--Setando os valores das variáveis
SET @valor = 50
SET @texto = 'Romeo Noro Guterres'
SET @data = GETDATE()
SET @nada = 50.50

--Exibir os valores (consulta)
SELECT @valor AS 'Idade', @texto AS 'Nome', @data AS 'Acesso'

--Exibir valores utilizando PRINT
PRINT 'O valor da variável nome é ' 
+ @texto +' e seu último acesso foi em ' 
+ CAST(@data AS VARCHAR(15));

--SELECT para atribuir valor em uma variável
DECLARE @Nome_Livro VARCHAR(100)

SELECT @Nome_Livro = L.titulo
FROM Livro as L
WHERE isbn = '9788581742458'

SELECT @Nome_Livro AS 'Nome do Livro';
--GO

--Atribuição de valores com cálculo
DECLARE @Ano_Publicacao INT,
		@Ano_Atual INT,
		@Nome VARCHAR(100) 
--Atribuir os valores
SET @Ano_Atual = 2024
SELECT @Nome_Livro = titulo, @Ano_Publicacao = ano
FROM Livro 
WHERE isbn '9788581742458';

SELECT * FROM Livro

--Exibir resutlado
SELECT @Nome_Livro AS 'Nome do Livro', 
		@Ano_Atual - @Ano_Publicacao AS 'Idade do Livro'


		