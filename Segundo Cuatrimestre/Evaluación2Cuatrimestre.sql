/*no hacer 1 y 2*/
/*3*/UPDATE employees SET Fax = Phone, 
                          Phone = Fax

/*4(no termnadp)*/

DELETE FROM playlist_track 
WHERE TrackId in (
	SELECT TrackId FROM tracks 
	GROUP by GenreId
	HAVING count(TrackId) < 50);

DELETE FROM invoice_items 
WHERE TrackId in (
	SELECT TrackId FROM tracks 
	GROUP by GenreId
	HAVING count(TrackId) < 50);
	
DELETE FROM tracks 
WHERE TrackId in (
	SELECT TrackId FROM tracks 
	GROUP by GenreId
	HAVING count(TrackId) < 50);

DELETE FROM genres 
WHERE GenreId in (
	SELECT GenreId FROM tracks 
	GROUP by GenreId
	HAVING count(TrackId) < 50);
/*opcion2(no terminado)*/UPDATE tracks SET GenreId = NULL
WHERE GenreId IN (SELECT TrackId FROM tracks 
	GROUP by GenreId
	HAVING count(TrackId) < 50)
	
DELETE FROM genres 
WHERE GenreId in (
	SELECT GenreId FROM genres g
	LEFT JOIN tracks t ON g.GenreId = t.GenreId
	GROUP by GenreId
	HAVING count(TrackId) < 50); 