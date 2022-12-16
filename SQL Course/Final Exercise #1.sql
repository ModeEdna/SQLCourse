# Find the average salary of the male and female employees in each department

USE employees;

SELECT
	d.dept_name,
    e.gender,
    ROUND(AVG(salary), 2) # forgot the rounding to amount
FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
		JOIN
	dept_emp de ON s.emp_no = de.emp_no
		JOIN
	departments d ON d.dept_no = de.dept_no
GROUP BY de.dept_no, e.gender # forgot to do a second grouping
ORDER BY de.dept_no;