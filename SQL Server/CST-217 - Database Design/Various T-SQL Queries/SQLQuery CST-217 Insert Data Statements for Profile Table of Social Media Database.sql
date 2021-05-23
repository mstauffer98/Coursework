use social_media
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
     values ('0','First','Guy',0000,'Divorced','Silver'),('1','Michael','Stauffer',1998,'Single','Green'),
	        ('2','Joe','Schmoe',1894,'Married','Beige'), ('3','Jane','Schmane',1620,'Married','Cerise'),
	        ('4','Lee','Huang',1966,'Married','Magenta'),
	        ('5','Fei','Huang',1970,'Married','Turquoise'), ('6','Douglas','Adams',1952,'Married','Postmodernism'),
	        ('7','Feng','Zhang',1983,'Single','Mauve'), 
	        ('8','Wei','Li',2003,'Single','Cornflower'), ('9','Last','Guy',2019,'Divorced','Gold');