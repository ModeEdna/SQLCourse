DELIMITER $$
CREATE TRIGGER trig_hire_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
	IF NEW.hire_date > date_format(sysdate(), '%Y-%m-%d') THEN
		SET NEW.hire_date = date_format(sysdate(), '%Y-%m-%d');
        
	END IF;
        
END $$

DELIMITER ;

INSERT employees VALUES ('999904', '1970-01-31', 'John', 'JOHNSON', 'M', '2025-01-01');

SELECT
	*
FROM
	employees
order bY emp_no DESC;