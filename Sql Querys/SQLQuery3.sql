
select Date from First where Id=(select Max(id) from First);
select * from First where Date=(select Date from First where Id=(select Max(id) from First));
declare @t time;
set @t = '17:05:00'
select CONVERT(varchar(15),@t,100);
DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter < 10)
BEGIN
    PRINT 'The counter value is = '; 

    SET @Counter  = @Counter  + 1
END
