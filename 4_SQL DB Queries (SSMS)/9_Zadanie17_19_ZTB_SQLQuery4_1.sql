SELECT nazwisko AS Nazwisko, imiona AS Imiona, album AS [Numer albumu], pesel AS [Pesel studenta], [adres email] AS [Email studenta]
FROM   Student
WHERE ([adres email] LIKE N'K%@gmail.com' OR
             [adres email] LIKE N'K%@o2.pl')
ORDER BY [Email studenta] DESC, Nazwisko, Imiona