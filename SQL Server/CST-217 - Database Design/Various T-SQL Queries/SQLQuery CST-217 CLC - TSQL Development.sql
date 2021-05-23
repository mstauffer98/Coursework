use social_media

/* Procedure is created to allow the insertion of data into users table.
   Created by Tristen.*/
use social_media
go
create procedure [dbo].[user_insert]
	@date_joined varchar(45),@num_friends varchar(15),@username varchar(30),@location varchar(50),@user_id varchar(50)
as
begin
insert into users ([date_joined],[num_friends],[username],[location],[user_id])
values (@date_joined,@num_friends,@username,@location,@user_id)
end
go 

/* Procedure is created to allow the update of data in the profile table, specifically the last name of the user to
   the name of their location.
   Created by Michael.*/
go
create procedure UpdateThing
	@UserID varchar
begin
	update profile
	set last_name = (select location
					 from users
				     where user_id = @UserID)
	from profile
	where user_id = @UserID;
end
go 

/* Procedure is created to allow the deletion of a row from the profile table.
   Created by Michael. */
go
create procedure DeleteThing
	@UserID varchar
as
begin
	delete
	from profile
	where user_id = @UserID;
end
go

/* UDF Scalar Function helps define the current year and birth year for use in the user's profile.
   Created by Tristen. */
/*use social_media
go
create function usescalar_function(
	@current_year Int,
	@BirthYear Int
)
returns INT 
AS
begin
	return @current_year-@BirthYear;
end; 
*/

/* Cursor is created to update the profile table, specifically changing a user's first name to their first name and
   their last name to the name of their location.
   Created by Michael. */
declare @UserID varchar

declare UpdateCursor Cursor READ_ONLY
for
select user_id
from profile

open UpdateCursor

fetch next from UpdateCursor into @UserID

while @@FETCH_STATUS = 0
begin
	update profile
	set first_name = (select username
					  from users
					  where user_id = @UserID),
	    last_name = (select location
					 from users
				     where user_id = @UserID)
	from profile
	where user_id = @UserID;

	fetch next from UpdateCursor into @UserID
end

close UpdateCursor

deallocate UpdateCursor


/* Trigger prints out the data deleted or inserted into a table.
   Created by Tristen. */
/*use social_media
go
create trigger inst_new_user
on users
for insert, update, delete
as
begin
	print'****** Deleted Table  ******';
	select * from deleted;
	print'****** Inserted Table ******';
	select * from deleted;
end;
go
*/










