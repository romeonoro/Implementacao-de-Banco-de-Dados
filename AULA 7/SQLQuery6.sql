CREATE PROCEDURE sp_AtualizaSalarioFuncionario
	@Cpf CHAR(11),
	@NovoSalario DECIMAL(10,2)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM FUNCIONARIO WHERE Cpf = @Cpf)
		BEGIN
			UPDATE FUNCIONARIO 
			SET Salario = @NovoSalario
			WHERE Cpf = @Cpf;
			PRINT 'Sal�rio alterado com sucesso!'
		END
	ELSE
		PRINT 'CPF inv�lido'
END;

EXEC sp_AtualizaSalarioFuncionario --'cpf' valor
SELECT * FROM FUNCIONARIO;