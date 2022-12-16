SELECT
	a.emp_no, a.first_name, a.last_name, b.dept_no, b.from_date
FROM
	employees a
LEFT JOIN
	dept_manager b ON a.emp_no = b.emp_no
WHERE
	a.last_name = 'Markovitch'
ORDER BY
	b.dept_no DESC, a.emp_no; # orders by dept_no first and emp_no second