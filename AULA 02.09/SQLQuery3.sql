--Verificar s o funcionário já recebeu bônus este ano
DECLARE @Bonus_Atual DECIMAL(10,2),
		@Nome_Funcionario VARCHAR(50) = 'Carlos';

--Obter o bônus deste funcionário
SELECT @Bonus_Atual = F.Bonus
FROM FUNCIONARIO AS F
WHERE F.Pnome = @Nome_Funcionario;

IF (@Bonus_Atual >= 0)
PRINT 'O Funcionário ' + @Nome_Funcionario
	+ ' tem um  Bônus de ' + CONVERT(VARCHAR(20), @Bonus_Atual);
ELSE IF(@Bonus_Atual IS NULL)
	PRINT 'O Funcionário ' + @Nome_Funcionario
	+ ' nunca recebeu bônus.'
ELSE
	PRINT 'O Funcionário ' + @Nome_Funcionario
	+ ' não tem bônus.'