SELECT name, d.plate_number FROM person p
left JOIN drivers_license d on p.license_id = d.id
where d.plate_number is NULL