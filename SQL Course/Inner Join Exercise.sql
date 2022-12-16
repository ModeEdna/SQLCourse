/* Extract a list containing info about all managers' employee number, */
/* first and last name, department number, and hire date */

SELECT e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM employees e
INNER JOIN
dept_manager dm ON e.emp_no = dm.emp_no
ORDER BY emp_no;

/* You don't have to use the word INNER */