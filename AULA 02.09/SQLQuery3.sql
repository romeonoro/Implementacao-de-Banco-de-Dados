--Verificar s o funcion�rio j� recebeu b�nus este ano
DECLARE @Bonus_Atual DECIMAL(10,2),
		@Nome_Funcionario VARCHAR(50) = 'Carlos';

--Obter o b�nus deste funcion�rio
SELECT @Bonus_Atual = F.Bonus
FROM FUNCIONARIO AS F
WHERE F.Pnome = @Nome_Funcionario;

IF (@Bonus_Atual >= 0)
PRINT 'O Funcion�rio ' + @Nome_Funcionario
	+ ' tem um  B�nus de ' + CONVERT(VARCHAR(20), @Bonus_Atual);
ELSE IF(@Bonus_Atual IS NULL)
	PRINT 'O Funcion�rio ' + @Nome_Funcionario
	+ ' nunca recebeu b�nus.'
ELSE
	PRINT 'O Funcion�rio ' + @Nome_Funcionario
	+ ' n�o tem b�nus.'