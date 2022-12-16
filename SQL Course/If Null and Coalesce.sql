SELECT
	*
FROM
	departments_dup
ORDER BY dept_no;


SELECT
	dept_no,
	COALESCE(dept_name,
    'Department name not provided') AS dept_name
FROM
	departments_dup
ORDER BY
	dept_no;
    

SELECT
	*
FROM
	departments_dup
ORDER BY dept_no;

SELECT
	dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
	departments_dup
Order BY dept_no ASC;