# Find the average salary of the male and female employees in each department

USE employees;

SELECT
	d.dept_name,
    e.gender,
    ROUND(AVG(salary), 0)
FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
		JOIN
	dept_emp de ON s.emp_no = de.emp_no
		JOIN
	departments d ON de.dept_no = d.dept_no
GROUP BY e.gender, d.dept_name
ORDER BY d.dept_name;