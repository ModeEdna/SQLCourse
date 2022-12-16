SELECT
	*
FROM
	dept_manager;

# select the first and last name from the Employees table for the same employee numbers
# that can be found in the department manager table    
    
SELECT
	e.first_name, e.last_name
FROM
	employees e
WHERE
	e.emp_no IN (SELECT
		dm.emp_no # subqueries must always be within parentheses
	FROM
		dept_manager dm);