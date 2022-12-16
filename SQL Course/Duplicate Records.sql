# duplicate records
INSERT INTO dept_manager_dup
VALUES ('110228', 'd003', '1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES ('d009', 'Customer Service');

SELECT
	*
FROM
	dept_manager_dup
ORDER BY dept_no ASC;

SELECT
	*
FROM
	departments_dup
ORDER BY dept_no ASC;

# creating the duplicate record would make for multiple errors in a join
# each matching data instance with a duplicate would double in the join
# using group by emp_no would get rid of the duplicates