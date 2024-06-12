-- Выведите только четные числа от 1 до 10. Пример: 2,4,6,8,10 

USE HOME_WORK_6;
DROP PROCEDURE IF EXISTS print_num;
DELIMITER $$
CREATE PROCEDURE print_num
(
 input_num INT
)
BEGIN
    DECLARE n INT;
    DECLARE result varchar(50) default "";
    SET n = input_num;
    
    REPEAT
        IF n % 2 = 0 THEN
            set result = concat(result, n, ' ');
            SELECT result;
        END IF;
        SET n = n + 1;
    UNTIL n > 10
    END REPEAT;
    select result;
END $$
DELIMITER ;
CALL print_num(1);