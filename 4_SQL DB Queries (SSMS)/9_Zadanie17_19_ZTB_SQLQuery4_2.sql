SELECT Student_Wydz.data1 AS [Data rozpoczęcia studiów], Student.nazwisko AS Nazwisko, Student.imiona AS Imiona, Student_Wydz.data2 AS [Data ukończenia studiów], Wydz.nazwa_wydz AS Wydział, Wydz.adres_wydz AS [Adres wydziału], Student.pesel AS [Pesel studenta]
FROM   Student INNER JOIN
             Student_Wydz ON Student.album = Student_Wydz.album_studenta INNER JOIN
             Wydz ON Student_Wydz.id_wydz = Wydz.id_wydz
WHERE (Student_Wydz.data1 = CONVERT(DATETIME, '2018-10-01 00:00:00', 102))
ORDER BY [Data rozpoczęcia studiów], [Pesel studenta]