SELECT gender, min(age), max(age), avg(age) as promedio FROM drivers_license
WHERE gender = 'female'