# first name, last name, hire date, from date, dept name (of managers)
# need to join employees, dept manager, and departments

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no
ORDER BY e.first_name;