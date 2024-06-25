/*1*/
SELECT d.department_name, count(e.employee_id) as cantidad_empleados, sum(e.salary) as gasto_total FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_id

/*2*/
SELECT e.first_name, e.last_name, d.department_name, c.country_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_id = 'US'

/*3*/
SELECT DISTINCT employee_id, first_name, last_name, email, phone_number, department_id FROM employees 
WHERE phone_number IS NULL

UPDATE employees 
SET phone_number = '111.222.3344'
WHERE phone_number IS NULL

/*4*/
UPDATE employees 
SET salary = salary + (salary * 0.20)
WHERE job_title = 'Purchasing Clerk' OR job_title = 'Programmer' AND  salary <= 8000 

/*5*/
INSERT INTO departments(department_name, location_id)
     VALUES ('Development', 
			(SELECT location_id FROM locations
			 WHERE street_address = '147 Spadina Ave') );

INSERT INTO employees(first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
     VALUES ('Matias', 'Gonzales', 'mgonzales@gmail.com', '1.231.231.122', '2024-06-25', 9, 5000, 100, 12),
			('Laura', 'Nievas', 'lnievas@gmail.com', '1.231.231.122', '2024-06-25', 9, 5000, 100, 12),
			('Federico', 'Lopez', 'mgonzales@gmail.com', '1.231.231.122', '2024-06-25', 9, 5000, 100, 12);

/*6 NO LLEGUEEEE T-T */

