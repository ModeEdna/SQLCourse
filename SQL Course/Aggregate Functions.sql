SELECT
	*
FROM
	salaries
ORDER BY salary DESC
LIMIT 10;

SELECT
	COUNT(*)
FROM
	salaries;
    
SELECT
	COUNT(DISTINCT dept_no)
FROM
	departments;
    
SELECT
	SUM(salary)
FROM
	salaries;
    
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
	from_date > '1997-01-01';
    
SELECT 
    MAX(salary)
FROM
    salaries;
    
SELECT
	MIN(salary)
FROM
	salaries;
    
SELECT
	MIN(emp_no)
FROM
	employees;
    
SELECT
	MAX(emp_no)
FROM
	employees;
    
SELECT
	AVG(salary)
FROM
	salaries;
    
SELECT
	AVG(salary)
FROM
	salaries
WHERE
	from_date > '1997-01-01';
    
SELECT
	ROUND(AVG(salary), 2)
FROM
	salaries;
    
SELECT
	ROUND(AVG(salary),2)
FROM
	salaries
WHERE
	from_date > '1997-01-01';