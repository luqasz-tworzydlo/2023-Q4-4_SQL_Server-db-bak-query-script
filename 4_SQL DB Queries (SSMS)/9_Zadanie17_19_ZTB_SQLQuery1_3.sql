SELECT Student_Wydz.data1 AS [Data rozpoczęcia studiów], Student.nazwisko AS Nazwisko, Student.imiona AS Imiona, Student_Wydz.data2 AS [Data ukończenia studiów], Wydz.nazwa_wydz AS Wydział, Wydz.adres_wydz AS [Adres wydziału], Student.album, Student.pesel
FROM   Student INNER JOIN
             Student_Wydz ON Student.album = Student_Wydz.album_studenta INNER JOIN
             Wydz ON Student_Wydz.id_wydz = Wydz.id_wydz
WHERE (YEAR(Student_Wydz.data2) = 2022) AND (Student.album BETWEEN 1 AND 5) AND (Student_Wydz.data1 = CONVERT(DATETIME, '2020-09-01 00:00:00', 102)) AND (Student.nazwisko LIKE N'N%' OR
             Student.nazwisko LIKE N'K%')
ORDER BY [Data rozpoczęcia studiów] DESC, Nazwisko, Imiona