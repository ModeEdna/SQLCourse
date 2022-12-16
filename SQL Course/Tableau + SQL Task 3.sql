# Compare the average salary of female versus male employees in the entire company until year 2002,
# and add a filter allowing you to see per department
# looking for an SQL output with columns of gender, dept_name, salary, calendar_year
# need to join 4 of the 5 tables... t_employees, t-salaries, t_departments, t_dept_emp
# need to group by 3 columns
# don't forget a having clause <= 2002
USE employees_mod;

SELECT 
    e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS salary,
    YEAR(s.from_date) AS calendar_year
FROM
    t_salaries s
        JOIN
    t_employees e ON s.emp_no = e.emp_no
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN
    t_departments d ON d.dept_no = de.dept_no
GROUP BY d.dept_no , e.gender , calendar_year
HAVING calendar_year <= 2002
ORDER BY d.dept_no;