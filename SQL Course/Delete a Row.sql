SELECT * FROM departments_dup ORDER BY dept_no;

SELECT * FROM dept_manager_dup ORDER BY emp_no;

DELETE FROM departments_dup
WHERE dept_name = 'Public Relations'; 