ALTER TABLE departments_dup
DROP COLUMN dept_manager;

SELECT
	*
FROM
	departments_dup
ORDER BY
	dept_no;
    
ALTER TABLE departments_dup
CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

ALTER TABLE department_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

INSERT INTO departments_dup (dept_name)
VALUES ('Public Relations');

DELETE FROM departments_dup
WHERE
	dept_no = 'd002';
    
COMMIT;