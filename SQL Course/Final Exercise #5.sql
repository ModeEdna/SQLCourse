# Retrieve a list of all employees from the ‘titles’ table who are engineers.
# Repeat the exercise, this time retrieving a list of all employees from the ‘titles’ table who are senior engineers.

USE employees;

SELECT
	*
FROM
	titles
WHERE
	title LIKE '%engineer%'; # didn't use like and forgot the %
    
SELECT
	*
FROM
	titles
WHERE
	title = 'Senior Engineer';
    
SELECT
	*
FROM
	titles
WHERE
	title LIKE '%Senior Engineer%';