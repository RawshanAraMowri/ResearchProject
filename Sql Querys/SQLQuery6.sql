

Declare @Id_ int, @Count int, @First int, @Next int;

SET @Count = 0;

Declare cursor_name Cursor 
For 
	Select  
		Id
	from 
		First where Date_=(select Date_ from First where Id=(select Max(id) from First));
Open cursor_name;
Fetch Next From cursor_name into @Id_;
While @@FETCH_STATUS = 0 
	BEGIN 
	    SET @Count = @Count + 1
		If @Count = 1
			Print @Id_
			SET @First = @Count
		Fetch Next From cursor_name into @Id_;
	END;
Close cursor_name;
Deallocate cursor_name;

If @First != 1
	Set @Next = @First - 1;
	
Select Id from First where Id=@First;
