CREATE PROCEDURE sp_ListarFuncionarioPorFaixaSalarial
	@SalarioMin DECIMAL(10,2),
	@SalarioMax DECIMAL(10,2)
AS
BEGIN
	SELECT * 
	FROM FUNCIONARIO 
	WHERE Salario BETWEEN @SalarioMin AND @SalarioMax
	ORDER BY Salario ASC;
END

EXEC sp_ListarFuncionarioPorFaixaSalarial 25000,35000;