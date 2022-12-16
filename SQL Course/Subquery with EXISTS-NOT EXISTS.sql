SELECT
	e.first_name, e.last_name
FROM
	employees e
WHERE
	EXISTS( SELECT # exists within this other query
			*
		FROM
			dept_manager dm
		WHERE
			dm.emp_no = e.emp_no) # union of tables
ORDER BY emp_no;
            
SELECT * FROM dept_manager; # confirms result should be 24 rows