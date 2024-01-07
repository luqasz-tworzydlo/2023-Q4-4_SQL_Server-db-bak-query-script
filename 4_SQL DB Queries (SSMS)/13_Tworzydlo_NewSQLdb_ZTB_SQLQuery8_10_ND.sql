CREATE TABLE #tabela (a int);
GO
DECLARE @I as int = 0

WHILE @I <= 10
BEGIN
	SET @I = @I + 1
	INSERT INTO #tabela VALUES (@I);
END
GO
SELECT * FROM #tabela
GO