CREATE PROCEDURE sp_ExibirNome--(@nome VARCHAR(50))
AS
BEGIN
	PRINT 'Romeo';
	--SELECT AS 
	--PRINT('Meu nome é: ' + @nome);
END;

EXEC sp_ExibirNome;