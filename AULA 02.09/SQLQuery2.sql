--Verificando se um funcionário está próximo da aposentadoria
DECLARE @Idade_Funcionario INT,
		@Nome_Funcionario VARCHAR(50) = 'Alice';
--Calculando Idade do Funcionário
SELECT @Idade_Funcionario = DATEDIFF(YEAR, DataNasc, GETDATE())
FROM FUNCIONARIO AS F
WHERE F.Pnome = @Nome_Funcionario;

IF(@Idade_Funcionario >= 55 AND @Idade_Funcionario < 60)
PRINT 'O Funcionario ' + @Nome_Funcionario + 'tem ' 
+ CONVERT(VARCHAR(50), @Idade_Funcionario) + ' anos.' + ' Está próximo a sua aposentadoria.';

ELSE IF (@Idade_Funcionario >= 60)
PRINT 'O Funcionario ' + @Nome_Funcionario + 'tem ' 
+ CONVERT(VARCHAR(50), @Idade_Funcionario) + ' anos.' + ' Já pode solicitar a aposentadoria.';

ELSE
PRINT 'O Funcionario ' + @Nome_Funcionario + 'tem ' 
+ CONVERT(VARCHAR(50), @Idade_Funcionario) + ' anos.' + ' Não está próximo da aposentadoria.';