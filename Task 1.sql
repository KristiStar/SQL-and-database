-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. 
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

CREATE FUNCTION FormatSeconds(@seconds INT)
RETURNS NVARCHAR(100)
AS
BEGIN
  DECLARE @days INT, @hours INT, @minutes INT;

  SET @days = @seconds / 86400;
  SET @seconds = @seconds % 86400;

  SET @hours = @seconds / 3600;
  SET @seconds = @seconds % 3600;

  SET @minutes = @seconds / 60;
  SET @seconds = @seconds % 60;

  RETURN CONCAT(@days, ' days ', @hours, ' hours ', @minutes, ' minutes ', @seconds, ' seconds');
END;
