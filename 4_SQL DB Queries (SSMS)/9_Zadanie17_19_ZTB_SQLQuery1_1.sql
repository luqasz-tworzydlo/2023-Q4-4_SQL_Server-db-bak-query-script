SELECT Student.*, Student_Wydz.data1, Student_Wydz.data2, Wydz.nazwa_wydz, Wydz.adres_wydz
FROM   Student INNER JOIN
             Student_Wydz ON Student.album = Student_Wydz.album_studenta INNER JOIN
             Wydz ON Student_Wydz.id_wydz = Wydz.id_wydz