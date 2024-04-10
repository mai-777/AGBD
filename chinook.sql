/*1*/SELECT Name, Milliseconds, Composer FROM tracks

/*2*/SELECT FirstName, LastName, Address, City FROM customers

/*3*/SELECT Name, Milliseconds FROM tracks
     WHERE Composer is NULL and Milliseconds > 2900000

/*4*/SELECT LastName, FirstName, Company FROM customers
     WHERE Company is NOT NULL

/*5*/SELECT BillingCity FROM invoices
     WHERE BillingState is NOT NULL
     ORDER BY BillingCity DESC

/*6*/SELECT Title FROM albums
     WHERE Title LIKE "%OF%"
     ORDER BY Title ASC

/*7*/SELECT t.Name, g.Name FROM tracks t 
     JOIN genres g ON t.GenreId = g.GenreId


/*8*/SELECT Name, Title FROM tracks t 
     JOIN albums a ON t.AlbumId= a.AlbumId
     ORDER BY Title DESC