# Select all managers hired between the two given dates

SELECT
	*
FROM
	dept_manager
WHERE
	emp_no IN (SELECT # selecting all managers WHERE the emp_no is within the IN query
		emp_no
	FROM
		employees
	WHERE
		hire_date BETWEEN '1990-01-01' AND '1995-01-01');