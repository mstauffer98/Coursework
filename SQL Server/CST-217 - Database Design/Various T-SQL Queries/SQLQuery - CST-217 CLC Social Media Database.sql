/* create database social_media; */

use social_media;

/* Create general user table for meta data regarding a user.
   Created it first in the query because every other table
   references it. Created by Tristen. */
/* create table users (
	date_joined varchar(45) not null,
	num_friends varchar(15),
	username varchar(30),
	location varchar(50),
	user_id varchar(25) not null,
	primary key(user_id)
);
*/

/* Creates table for general, personal information of a user.
   Created by Michael. */
/* create table profile (
    user_id varchar(25) not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	DOB numeric(8) not null,
	marital_status numeric(20) not null,
	fav_color varchar(20)
	primary key (user_id),
	foreign key (user_id) references users (user_id)
);
*/

/* Creates a table establishing relationships between certain
   users. Created by Michael. */
/* create table relationship (
   user_id varchar(25) not null,
   friend_id varchar(25) not null,
   relationship varchar(20)
   primary key (user_id),
   foreign key (user_id) references users (user_id)
);
*/

/* Creates table regarding information of posts made on the
   social media site. Created by Tristen. */
/* create table posts(
	fav_post varchar(350),
	fav_auth varchar(25),
	popular_post varchar(350),
	disliked_posts varchar(350),
	foreign key (fav_auth) references users (user_id)
);
*/

/* Creates table giving information about user reactions
   (e.g., likes, "WOW", "Sad") to specific posts. Created
   by Michael.*/
/* create table reacts (
   user_id varchar(25) not null,
   poster_id numeric(25) not null,
   post_# numeric(25) not null,
   reaction varchar(20)
   primary key (user_id),
   foreign key (user_id) references users (user_id)
);
*/

/* Creates table establishing information about events hosted
   by specific users. Created by Tristen. */
/* create table events(
	event_location varchar(50),
	event_host varchar(100),
	host_id varchar(25) not null,
	catering bit not null,
	starting_time varchar(50)not null,
	end_time varchar(50)not null,
	primary key (host_id),
	foreign key (host_id) references users (user_id)
);
*/

select * from users;
select * from profile;
select * from relationship;
select * from posts;
select * from reacts;
select * from events;
