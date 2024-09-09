ALTER PROCEDURE sp_ListarFuncionariosDepartamento
	@NomeDepartamento VARCHAR(10)
AS
BEGIN
	SELECT 
		F.Pnome + ' ' + F.Minicial + '. ' + F.Unome AS 'Nome Comleto',
		D.Dnome AS 'Departamento'
		FROM FUNCIONARIO AS F
		INNER JOIN DEPARTAMENTO AS D ON F.Dnr = D.Dnumero
		WHERE D.Dnome = @NomeDepartamento;
END;

EXEC sp_ListarFuncionariosDepartamento @NomeDepartamento = 'Pesquisa'


