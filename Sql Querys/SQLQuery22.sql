--select * from First_12Hour;
--Update Second set NightCV=" + AfternoonCv + "where Date= 2020-06-21;
--select * from Second;
--select * from First;
--Delete from First;
--select * from First_12Hour;
--Delete from First_12Hour;
select * from Second;
--Delete from Second;
--Update Second set NightCV= AfternoonCv  where Date=(Select Date from Second Where Id=(Select Max(id) from Second));
--Select Date from Second Where Id=(Select Max(id) from Second);
--Delete from Second where Id = 37;
--Delete NightCV from Second  where value = 30;
----alter table Second add DailyAvgCV as ((MorningCV + AfternoonCV + NightCV)/3);
--alter table Second drop column NightCV;
