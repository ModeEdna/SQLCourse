# average salary of managers per department

SELECT 
    d.dept_name, AVG(salary) AS AVG_Salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING AVG_Salary > 60000
ORDER BY AVG_Salary DESC;