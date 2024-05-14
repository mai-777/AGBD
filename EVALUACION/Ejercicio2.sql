SELECT d.age, d.gender, p.name, d.car_make, d.car_model, d.plate_number FROM person p
JOIN drivers_license d on p.license_id = d.id
WHERE d.gender = 'male' AND d.age >= 70
ORDER BY age ASC ;