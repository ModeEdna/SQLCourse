
# Compare the number of Men to Women employees throughout the years.
SELECT
	emp_no, from_date, to_date
FROM
	t_dept_emp;
    
SELECT DISTINCT
	emp_no, from_date, to_date
FROM
	t_dept_emp;
    
# Problem 1: Solution in SQL.

SELECT
	YEAR(d.from_date) AS calendar_year,
    e.gender,
    COUNT(e.emp_no) AS num_of_employees
FROM
	t_employees e
    JOIN
    t_dept_emp d on d.emp_no = e.emp_no
GROUP BY calendar_year, e.gender
HAVING calendar_year >= 1990
ORDER BY calendar_year;