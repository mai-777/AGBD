SELECT address_number, address_street_name FROM person 
WHERE address_street_name like 'Franklin Ave'
ORDER by address_number desc
limit 1 offset 1