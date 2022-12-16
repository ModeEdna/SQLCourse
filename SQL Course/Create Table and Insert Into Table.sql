INSERT INTO departments_dup
(
	dept_no,
    dept_name
)
SELECT
	*
FROM
	departments_dup
ORDER BY dept_no;
    
CREATE TABLE departments_dup
(
	dept_no VARCHAR(4),
    dept_name VARCHAR(30)
);