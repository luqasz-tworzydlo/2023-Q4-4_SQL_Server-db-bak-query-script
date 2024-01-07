SELECT COUNT(Osoba.id_osoba) AS [Liczba osób]
FROM   Miasto INNER JOIN
             Osoba ON Miasto.id_miasta = Osoba.id_m
WHERE (Miasto.miasto LIKE N'Warszawa')