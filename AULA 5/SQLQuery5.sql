--Decalarando uma variável
DECLARE @numero INT,
		@texto VARCHAR(10)
--Setando os valores
SET @numero = 20
SET @texto = 'Juca'

--Condição IF
IF (@numero > 18)
	PRINT 'O usuário ' + @texto + ' é maior de idade'
ELSE
	PRINT 'O usuário ' + @texto +' não tem a idade permitida'

--Condição IF ELSE com mais de uma declaração
IF @texto = 'Juca'
	BEGIN
		SET @numero = 500
		PRINT @numero
	END
ELSE
	BEGIN
		SET @numero = -25
		PRINT 'NUMERO INCORRETO: '
		+ CONVERT(VARCHAR(10), @numero)
	END

--Verificando se um banco já existe
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Biblioteca')
	CREATE DATABASE Biblioteca;
ELSE
	PRINT 'O Banco já existe';
--Verificando se uma tabela já existe
IF NOT EXISTS (SELECT * FROM sys.objects 
				WHERE object_id = OBJECT_ID('Faculdade')
				AND type in(N'U'))
	BEGIN
		CREATE TABLE Faculdade(
			id INT  IDENTITY PRIMARY KEY, 
			Nome VARCHAR(50),
			Nota1 FLOAT,
			Nota2 FLOAT,
			Nota3 FLOAT
		);
	END
ELSE
	PRINT 'A tabela já existe';

INSERT INTO Faculdade
VALUES ('Herysson', 9,8,7),
	   ('Romeo',6,7,8),
	   ('Anthony',7,8,7),
	   ('Matheus',9,10,6),
	   ('Gilberto',8,9,10),
	   ('Bruno',4,5,6),
	   ('Iago',-3,-8,-25);

--Média de notas

--Alunos reprovados