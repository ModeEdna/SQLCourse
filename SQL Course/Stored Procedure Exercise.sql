USE employees;

DROP PROCEDURE IF EXISTS avg_salary;

DELIMITER $$
CREATE PROCEDURE avg_salary()
BEGIN
	SELECT
		ROUND(AVG(salary), 2)
    FROM salaries;
END$$

DELIMITER ;

CALL employees.avg_salary();