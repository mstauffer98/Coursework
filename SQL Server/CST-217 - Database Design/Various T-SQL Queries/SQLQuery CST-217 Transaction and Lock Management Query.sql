/* This is my own work based on code provided.
   
   Michael Stauffer 
   CST-217
   Transaction and Lock Management Query
   3/10/19 */

use social_media;
set transaction isolation level read uncommitted
set nocount on
go
/* Insert data into users table with transaction. */
begin transaction tranThing
	
	insert into users ([date_joined],[num_friends],[username],[location],[user_id]) values ('07/29/1954', '8', 'ring_bearer', 'The Shire', 1000);
	
	waitfor delay '00:00:05';
	
	if @@trancount > 1
		rollback transaction tranThing
	else
		commit transaction tranThing; 


/* Select data from users table with READONLY clause with transaction. */
begin transaction tranThing
	
	select * from users READONLY
		 where location = 'The Shire'; 
	
	waitfor delay '00:00:05';
	
	if @@trancount > 0
		rollback transaction tranThing
	else
		commit transaction tranThing; 


/* Update data within users table with transaction. */
begin transaction tranThing
	update users
		set num_friends = 7, location = 'Mordor', username = 'Master9Fingers'
		where user_id = 1000; 
	
	waitfor delay '00:00:05';
	
	if @@trancount > 1
		rollback transaction tranThing
	else
		commit transaction tranThing; 


/* Select data from users table without READONLY clause with transaction. */
begin transaction tranThing
	
	select * from users
		 where location = 'Mordor'; 
	
	waitfor delay '00:00:05';
	
	if @@trancount > 1
		rollback transaction tranThing
	else
		commit transaction tranThing; 


/* Delete data from users table with transaction. */
begin transaction tranThing
	
	delete from users
		 where user_id = 1000;
	
	waitfor delay '00:00:05';
	
	if @@trancount > 1
		rollback transaction tranThing
	else
		commit transaction tranThing; 
























