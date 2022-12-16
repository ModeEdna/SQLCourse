# how many people have been hired after the 1st of January 2000?

SELECT
	*
FROM
	employees
WHERE
	hire_date > '2000-01-01';
    
CREATE INDEX i_hire_date ON employees(hire_date);
    
# SELECT all employees bearing the name "Georgi Facello"
    
SELECT
	*
FROM
	employees
WHERE
	first_name = 'Georgi'
		AND last_name = 'Facello';
        
CREATE INDEX i_composite ON employees(first_name, last_name);