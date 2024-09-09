CREATE PROCEDURE sp_NovoFuncionarioDepartamento
	@Pnome VARCHAR(50),
    @Minicial CHAR,
    @Unome VARCHAR(15),
    @Cpf CHAR(11),
    @Datanasc DATE,
    @Endereco VARCHAR(255),
    @Sexo CHAR,
    @Salario DECIMAL(10,2),
    @Cpf_supervisor CHAR(11),

	-------------------------

	@Dnome VARCHAR(50),
    @Dnumero INT

AS
BEGIN
	INSERT INTO DEPARTAMENTO (Dnome, Dnumero)
	VALUES (@NomeDepartamento, @Dnr)

	INSERT INTO FUNCIONARIO(Pnome,Minicial,Unome,Cpf,Datanasc,Endereco,Sexo,Salario,Cpf_supervisor,Dnr)
	VALUES(@Pnome,@Minicial,@Unome,@Cpf,@Datanasc,@Endereco,@Sexo,@Salario,@Cpf_supervisor,@Dnr)

	UPDATE DEPARTAMENTO
	SET Cpf_gerente = @Cpf, Data_inicio_gerente = GETDATE()
	WHERE Dnumero = @Dnr;
	PRINT 'Novo Funcionário e Departamento inserido com sucesso'
END;

EXEC sp_NovoFuncionarioDepartamento
	@Pnome = 'Romeo',
	@Minicial = 'N',
	@Unome = 'Albuquerque',
	@Cpf = 12345678910,
	@Datanasc = '2005/07/04',
	@Endereço = 'Benjamin Constant, 915',
	@Sexo = 'F',
	@Salario = 20000.50,
	@Cpf_supervisor = 88866555577,
	@Dnr = 5,
	--------------------------------------
	@Dnome = 'TI',
    @Dnumero = 10;
	
	SELECT * FROM DEPARTAMENTO
