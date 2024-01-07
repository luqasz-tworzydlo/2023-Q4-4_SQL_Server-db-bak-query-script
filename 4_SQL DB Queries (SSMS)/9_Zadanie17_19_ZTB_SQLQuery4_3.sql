SELECT nazwisko AS Nazwisko, imiona AS Imiona, pesel AS [Pesel studenta], album AS [Numer albumu], [adres email] AS [Email studenta]
FROM   Student
WHERE (nazwisko LIKE N'_o%' OR
             nazwisko LIKE N'_u%')
ORDER BY Nazwisko, Imiona