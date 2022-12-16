SELECT
	*
FROM
	salaries
WHERE
	salary > 89000
ORDER BY salary DESC;

CREATE INDEX i_salary ON salaries(salary);