Declare
    @Id_ varchar(17), 
	@Date_ date, 
	@start_Time nvarchar(17), 
	@end_Time nvarchar(17),
	@Gait_Speed float;
Declare @sT varchar(17), @eT varchar(17);

Declare cursor_name Cursor 
For 
	Select 
		Id,
		Date_,
		Convert(varchar(17),StartTime,100),
		Convert(Varchar(17),EndTime,100),
		GaitSpeed
	from 
		First;
Open cursor_name;
Fetch Next From cursor_name into @Id_, @Date_, @start_Time, @end_Time, @Gait_Speed;
While @@FETCH_STATUS = 0 
	BEGIN 
		SET @sT = @start_Time;
		SET @eT = @end_Time;
		Print @Id_;
		Insert into First_12Hour values(@Id_,@Date_, @start_Time, @end_Time, @Gait_Speed);
		Fetch Next From cursor_name into @Id_, @Date_, @start_Time, @end_Time, @Gait_Speed;
	END;
Close cursor_name;
Deallocate cursor_name;

