CREATE TABLE ALUNO (
	Id INT IDENTITY,
	Nome VARCHAR(50),
	Data_Nasc DATE
);

INSERT INTO ALUNO VALUES ('Romeo Noro Guterres', '2005-07-04');

SELECT * FROM ALUNO

--

DECLARE @idade INT

SELECT @idade = (YEAR(GETDATE()) - YEAR(Data_Nasc))
FROM ALUNO 
WHERE id = 1;

PRINT 'Idade: ' + CAST(@idade AS VARCHAR(10));

--Declaração de tabelas
DECLARE @TabelaAlunos TABLE(
	Id INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50),
	Tipo_aluno INT,
	Curso VARCHAR(2)
	);

--Inserir valores na tabela
INSERT INTO @TabelaAlunos VALUES ('Romeo Noro Guterres', 1, 'CC'),
								 ('Herysson R. Figueiredo', 2, 'CC');
--Recuperar os valores
SELECT * FROM @TabelaAlunos

--CAST
SELECT 'O livro ' 
		+ titulo 
		+ ' é do ano '
		+ CAST(ano AS VARCHAR(10)) AS 'Título / Ano'
FROM Livro;

--CONVERT
SELECT 'O livro ' 
		+ titulo 
		+ ' é do ano '
		+ CONVERT(VARCHAR, ano) AS 'Título / Ano'
FROM Livro;
--CONVERT com estilo
SELECT 'O aluno '
		+ Nome
		+ ' nasceu em '
		+ CONVERT(VARCHAR(10), Data_Nasc, 109)
FROM ALUNO;