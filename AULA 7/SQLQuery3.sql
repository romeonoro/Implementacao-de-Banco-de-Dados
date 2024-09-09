CREATE PROCEDURE sp_ListarFuncionariosDepartamento
AS
BEGIN
	--CONCAT()
	SELECT 
		F.Pnome + ' ' + F.Minicial + '. ' + F.Unome AS 'Nome Comleto',
		D.Dnome AS 'Departamento'
		FROM FUNCIONARIO AS F
		INNER JOIN DEPARTAMENTO AS D ON F.Dnr = D.Dnumero
		ORDER BY D.Dnome;
END;