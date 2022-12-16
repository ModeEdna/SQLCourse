SELECT
	e.*
FROM
	employees e
WHERE
	EXISTS( SELECT # exists within this other query
			*
		FROM
			titles t
		WHERE
			t.emp_no = e.emp_no AND t.title = 'Assistant Engineer') # union of tables
ORDER BY first_name, last_name;

SELECT * FROM titles WHERE title = 'Assistant Engineer';