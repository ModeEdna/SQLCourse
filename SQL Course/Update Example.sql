SELECT
	*
FROM
	departments_dup
ORDER BY dept_no;


COMMIT;

UPDATE departments_dup
SET
	dept_no = 'd002',
    dept_name = 'Finance'
WHERE
	dept_no = 'd011';
    
ROLLBACK;