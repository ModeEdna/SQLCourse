SELECT
	e.emp_no,
    e.first_name,
    e.last_name,
    CASE
    WHEN MAX(de.to_date) > '2020-03-02' THEN 'Is still employed'
		ELSE 'Not an employee anymore'
	END AS employed
FROM
	employees e
		JOIN
	dept_emp de ON de.emp_no = e.emp_no
GROUP BY de.emp_no
LIMIT 100;