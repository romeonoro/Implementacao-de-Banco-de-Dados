CREATE PROCEDURE sp_NovoFuncionario
	@Pnome VARCHAR(50),
    @Minicial CHAR,
    @Unome VARCHAR(15),
    @Cpf CHAR(11),
    @Datanasc DATE,
    @Endereco VARCHAR(255),
    @Sexo CHAR,
    @Salario DECIMAL(10,2),
    @Cpf_supervisor CHAR(11),
    @Dnr INT
AS
BEGIN
	INSERT INTO FUNCIONARIO(Pnome,Minicial,Unome,Cpf,Datanasc,Endereco,Sexo,Salario,Cpf_supervisor,Dnr)
	VALUES(@Pnome,@Minicial,@Unome,@Cpf,@Datanasc,@Endereco,@Sexo,@Salario,@Cpf_supervisor,@Dnr)
	PRINT 'Funcionário inserido com sucesso'
END;

EXEC sp_NovoFuncionario
	@Pnome = 'Matheus',
	@Minicial = 'N',
	@Unome = 'Albuquerque',
	@Cpf = 03529574090,
	@Datanasc = '2005/07/04',
	@Endereco = 'Benjamin Constant, 915',
	@Sexo = 'F',
	@Salario = 20000.50,
	@Cpf_supervisor = 88866555576,
	@Dnr = 5;

SELECT * FROM
FUNCIONARIO AS F
	WHERE F.Cpf = '03529574090';