/*
WHILE(CONDIÇÃO)
	BEGIN


	END
*/
DECLARE @valor INT;

SET @valor = 0;

WHILE @valor < 10
	BEGIN
		IF @valor = 6
			BREAK;
		PRINT 'Número: ' + CAST(@valor AS VARCHAR(10));
		SET @valor = @valor + 1;
	END


-- %2<>0 CONTINUE