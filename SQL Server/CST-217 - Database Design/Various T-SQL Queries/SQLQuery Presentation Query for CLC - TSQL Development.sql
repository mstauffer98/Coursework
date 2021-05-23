use social_media
/*
drop table profile;

create table profile (
    user_id varchar(25) not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	BirthYear numeric(8) not null,
	marital_status varchar(20) not null,
	fav_color varchar(20)
	primary key (user_id),
	foreign key (user_id) references users (user_id));

insert into profile([user_id],[first_name],[last_name],[BirthYear],[marital_status],[fav_color]) 
     values ('0','First','Guy',0000,'Divorced','Silver'), ('1','Michael','Stauffer',1998,'Single','Green'),
	        ('2','Tristen','Soto',1999,'Single','Cornflower'), ('3','Joe','Schmoe',1894,'Married','Beige'), 
			('4','Jane','Schmane',1620,'Married','Cerise'), ('5','Lee','Huang',1966,'Married','Magenta'),
			('6','Fei','Huang',1970,'Married','Turquoise'), ('7','Feng','Zhang',1983,'Single','Mauve'), 
			('8','Douglas','Adams',1952,'Married','Postmodernism'), ('9','Last','Guy',2019,'Divorced','Gold');
			*/


--delete from profile where user_id = 'test5';
--delete from users where username = 'test5';

/*
go 
create trigger ins_new_user
on users
after Insert, Update
as
if @@ROWCOUNT=1
begin
declare 
	@user_id varchar(25)
select 
	@user_id= user_id
	from inserted ins;
	insert into profile (user_id,first_name,last_name,BirthYear, marital_status, fav_color)
		values (@user_id,'test','test','1000','test','test')
end

go*/

/*
go
create function get_user_id()
returns @useid table(
	ID varchar(25) not null,
	username varchar(30),
	#friends varchar(15)
)
as 
begin
	insert into @useid
	select user_id,username,num_friends
	from social_media.dbo.users
	return;
end; */

--select * from get_user_id();

/*
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
*/

--exec UpdateThing
--exec DeleteThing
--@UserID = 1;


/*
exec user_insert
@date_joined=Test5,
@num_friends=test5,
@username=test5,
@location=test5,
@user_id= test5  
select * from users where username='test5'*/
select * from profile;