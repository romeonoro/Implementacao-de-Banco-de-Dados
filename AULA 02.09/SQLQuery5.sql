--Funcionários que foram admitidos nos últimos 6 meses
SELECT F.Pnome, F.Data_Admissao,
		CASE
			WHEN DATEDIFF(DAY ,Data_Admissao, GETDATE()) <= 180 THEN 'Recém Admitido'
			ELSE 'Admitido a mais de 6 meses'
		END
FROM FUNCIONARIO AS F