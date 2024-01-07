SELECT kwota AS Kwota, data AS Data
FROM   Datki
WHERE (YEAR(data) = 2023)
GROUP BY kwota, data