--Declarando vari�veis
DECLARE @valor INT,
		@texto VARCHAR(40),
		@data DATE,
		@nada MONEY

--Setando os valores das vari�veis
SET @valor = 50
SET @texto = 'Romeo Noro Guterres'
SET @data = GETDATE()
SET @nada = 50.50

--Exibir os valores (consulta)
SELECT @valor AS 'Idade', @texto AS 'Nome', @data AS 'Acesso'

--Exibir valores utilizando PRINT
PRINT 'O valor da vari�vel nome � ' 
+ @texto +' e seu �ltimo acesso foi em ' 
+ CAST(@data AS VARCHAR(15));

--SELECT para atribuir valor em uma vari�vel
DECLARE @Nome_Livro VARCHAR(100)

SELECT @Nome_Livro = L.titulo
FROM Livro as L
WHERE isbn = '9788581742458'

SELECT @Nome_Livro AS 'Nome do Livro';
--GO

--Atribui��o de valores com c�lculo
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


		