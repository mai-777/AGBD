/*1*/SELECT department_name FROM departments
     ORDER BY department_name ASC

/*2*/SELECT DISTINCT salary FROM employees
     ORDER BY salary ASC

/*3*/SELECT DISTINCT job_title, max_salary, min_salary FROM jobs
     WHERE job_title like '%Manager'
     ORDER BY max_salary DESC, min_salary DESC

/*4*/