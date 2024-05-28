/*1 artista*/
/*1 album d ese artista*/
/*3 canciones de ese album*/

/*1*/INSERT INTO artists(name)
     VALUES ("Laufey");

/*2*/INSERT INTO albums(Title, ArtistId)
     VALUES ("Bewitched", 276);

/*3*/INSERT INTO tracks(name, AlbumId, MediaTypeId, Milliseconds, UnitPrice)
     VALUES ("Dreamer", 348, 3, 211000, 0.99),
	        ("Haunted", 348, 3, 200000, 0.99),
	        ("Lovesick", 348, 3, 226000, 0.99);
/*UPDATE*/

/*1*/UPDATE tracks 
          SET GenreId = 2
          WHERE AlbumId = 348

/*2*/UPDATE tracks 
     SET Composer = 'Spencer Stewart'
     WHERE TrackId = 3504

/*3*/UPDATE tracks 
     SET Composer = 'Spencer Stewart'
     WHERE TrackId = 3505

/*4*/UPDATE tracks 
     SET Composer = 'Spencer Stewart'
     WHERE TrackId = 3506

/*5*/UPDATE tracks 
     SET Bytes = 3123213
     WHERE TrackId = 3505

/*6*/UPDATE tracks 
     SET Bytes = 4123213
     WHERE TrackId = 3504

/*7*/UPDATE tracks 
     SET Bytes = 5123213
     WHERE TrackId = 3506

/*DELETE*/

/*1*/DELETE FROM tracks
     WHERE TrackId = 3504 or TrackId = 3505 or TrackId = 3506
    
/*2*/DELETE FROM albums
     WHERE AlbumId = 348

/*3*/DELETE FROM artists
     WHERE ArtistId = 276