CREATE PROCEDURE sp_ExibirNome--(@nome VARCHAR(50))
AS
BEGIN
	PRINT 'Romeo';
	--SELECT AS 
	--PRINT('Meu nome �: ' + @nome);
END;

EXEC sp_ExibirNome;