--Elegir una banda o artista que no esté en el sistema y agregarlo, junto con un disco y las canciones correspondientes. 
-- Elegir el género adecuado (o agregarlo si no existe)
INSERT INTO artists (name)
VALUES ("Dua Lipa");-- un nuevo artista

INSERT INTO genres (Name)
SELECT 'pop'
WHERE NOT EXISTS (SELECT 1 FROM genres WHERE Name = 'Nuevo Género');-- Verificar si el género existe, y si no, agregarlo

INSERT INTO albums (Title, ArtistId)
VALUES ('New Rules ', (SELECT ArtistId FROM artists WHERE Name = 'Dua Lipa'));-- Insertar un nuevo álbum para el nuevo artista

-- Insertar nuevas canciones para el nuevo álbum
INSERT INTO tracks (name, AlbumId, MediaTypeId,GenreId, Composer, Milliseconds, UnitPrice)
VALUES 
('Lost In Your Light'(SELECT 349 FROM albums WHERE Title = 'New Rules'), 1 (SELECT 9 FROM genres WHERE name = 'New Rules'),'Dua Lipa',3700300, 0.99), 
('mean', (SELECT 349 FROM albums WHERE Title = 'New Rules'), 1, (SELECT 9 FROM genres WHERE Name = 'New Rules'), 'dua lipa', 3504000, 0.99),
('i loved', (SELECT 349 FROM albums WHERE Title = 'New Rules'), 1, (SELECT 9 FROM genres WHERE Name = 'New Rules'), 'dua lipa', 320000, 0.99),
   