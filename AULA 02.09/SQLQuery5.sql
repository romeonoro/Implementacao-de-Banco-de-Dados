--Funcion�rios que foram admitidos nos �ltimos 6 meses
SELECT F.Pnome, F.Data_Admissao,
		CASE
			WHEN DATEDIFF(DAY ,Data_Admissao, GETDATE()) <= 180 THEN 'Rec�m Admitido'
			ELSE 'Admitido a mais de 6 meses'
		END
FROM FUNCIONARIO AS F