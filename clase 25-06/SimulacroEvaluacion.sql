/*1*/

SELECT e.first_name, d.department_name, l.state_province, e.salary, em.first_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id= l.location_id
JOIN employees em ON e.employee_id= em.manager_id
ORDER BY e.salary

/*2*/

UPDATE jobs 
SET min_salary = min_salary - (min_salary * 0.25)

UPDATE jobs 
SET max_salary = max_salary - (max_salary * 0.25)

/*3*/

DELETE FROM employees
WHERE employee_id in (
	SELECT e.employee_id FROM jobs j
	JOIN employees e ON j.job_id = e.job_id
	WHERE salary > max_salary)

