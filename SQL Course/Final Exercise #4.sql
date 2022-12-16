SELECT
	first_name, last_name, hire_date
FROM
	employees
WHERE
	YEAR(hire_date) = 2000
ORDER BY
	hire_date; # got the same result with a different code when I first did it
    
SELECT
	first_name, last_name, hire_date
FROM
	employees
WHERE
	hire_date BETWEEN '' AND ''
ORDER BY
	hire_date; # original code I got the answer with