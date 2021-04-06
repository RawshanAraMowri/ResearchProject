declare @t time;
Select startTime from First Where Id=(Select Max(id) from First);
set @t = Select startTime from First Where Id=(Select Max(id) from First);
Insert into First_12Hour values(1 ,'2020-04-05' , Convert(varchar(17),@t,100),Convert(Varchar(17),@t,100), 1.76);
select * from First_12Hour;

select * from First;
select * from First where Date_=(select Date_ from First where Id=(select Max(id) from First));
select GaitSpeed from First where Date_='2020-05-09';