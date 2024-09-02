/*
CASE
	WHEN condição THEN valor1 
	WHEN condição THEN valor2
	ELSE valor-default
END
*/
SELECT f.Pnome, f.Salario,
		CASE
			WHEN Salario <= 15000 THEN 'Baixo'
			WHEN Salario > 15000 AND Salario <= 30000 THEN 'Médio'
			ELSE 'Alto'
		END AS 'Categoria_Salario'
FROM FUNCIONARIO AS F;