SELECT Student.*, nazwisko AS [Nazwisko studenta]
FROM   Student
WHERE (nazwisko LIKE N'Kowalska')
ORDER BY [Nazwisko studenta]