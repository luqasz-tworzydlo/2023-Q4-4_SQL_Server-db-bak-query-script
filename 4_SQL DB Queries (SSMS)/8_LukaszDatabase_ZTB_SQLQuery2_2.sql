SELECT Miasto.miasto, Miasto.id_miasta, COUNT(Osoba.id_osoba) AS [Liczba osób]
FROM   Miasto INNER JOIN
             Osoba ON Miasto.id_miasta = Osoba.id_m
GROUP BY Miasto.miasto, Miasto.id_miasta
ORDER BY Miasto.miasto, Miasto.id_miasta