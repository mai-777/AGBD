/*1*/

INSERT INTO regions(region_name)
     VALUES ("África"),
			("Middle east");

/*2*/

UPDATE countries 
SET region_id = 6
WHERE country_id = 'IL' OR country_id = 'KW'

UPDATE countries 
SET region_id = 5
WHERE region_id = 4

/*3*/

DELETE FROM regions
WHERE region_id = 4

/*4*/

INSERT INTO countries(country_id, country_name, region_id)
     VALUES ("KN", "Kenia", 5),
			("MC", "Morocco", 5);

INSERT INTO countries(country_id, country_name, region_id)
     VALUES ("IR", "Iran", 6),
			("IQ", "Iraq", 6);

/*5*/

INSERT INTO regions(region_name)
     VALUES ("Middle east and África");

/*6*/

UPDATE countries 
SET region_id = 7
WHERE country_name in (
	SELECT country_name FROM countries
	WHERE region_id = 5 or region_id = 6);

/*7*/


/*8*/