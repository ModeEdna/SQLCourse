SELECT
	dm.emp_no,
    e.first_name,
    e.last_name,
	MAX(s.salary) - MIN(s.salary) AS salary_difference,
    CASE
    WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'Yes'
		ELSE 'No'
	END AS over_30K
FROM
	dept_manager dm
		JOIN
	employees e ON e.emp_no = dm.emp_no
		JOIN
	salaries s ON s.emp_no = dm.emp_no
GROUP BY s.emp_no
ORDER BY e.emp_no;
    