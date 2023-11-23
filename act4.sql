--Borrar todos los géneros que tengan menos de 50 canciones (borrar todo lo necesario para poder borrar estos géneros)
--DELETE FROM 
DELETE FROM genres
WHERE GenreId IN (
    SELECT GenreId
    FROM tracks
    GROUP BY GenreId
    HAVING COUNT(GenreId) < 50
);

DELETE FROM tracks
WHERE GenreId IN (
    SELECT GenreId
    FROM tracks
    GROUP BY GenreId
    HAVING COUNT(*) < 50
);
