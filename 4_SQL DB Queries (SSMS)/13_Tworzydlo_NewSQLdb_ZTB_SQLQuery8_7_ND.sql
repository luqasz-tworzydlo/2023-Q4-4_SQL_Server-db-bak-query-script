DECLARE @mies int
SET @mies = month(getdate())
SELECT
CASE
	WHEN @mies Between 3 AND 5 THEN 'Meteorologiczna wiosna'
	WHEN @mies Between 6 AND 8 THEN 'Meteorologiczne lato'
	WHEN @mies Between 9 AND 11 THEN 'Meteorologiczna jesień'
	ELSE 'Meteorologiczna zima'
END