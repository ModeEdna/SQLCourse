# Find the avergae salaries of men and women in the company

SELECT 
    e.gender, ROUND(AVG(s.salary), 2) AS average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;