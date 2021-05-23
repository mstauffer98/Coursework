/* This is my own work.
   
   Michael Stauffer 
   CST-425
   Database Connectivity with R Query
   4/26/20 */

/* Allocate table for use and drop for recreation if necessary. */
use StudentData
drop table Student;

/* Create table with necessary values. */
create table Student (
    SID varchar(8) not null,
	LastName varchar(20) not null,
	FirstName varchar(20) not null,
	Score numeric(3) not null,
	GPA float(3) not null,
	Extracurricular varchar(20),
	primary key (sid));

/* Add probability column. */
alter table Student
add Probability decimal (10,3);

/* Insert ten records. */
insert into Student([SID],[LastName],[FirstName],[Score],[GPA],[Extracurricular]) 
     values ('00000000','First','Guy',50,1.00,'Sports'), ('15331894','Schmoe','Joe',61,2.05,'Choir'), 
	        ('34162045','Schmane','Jane',55,2.99,'Sports'),('19996802','Smith','John',75,2.55,'Book Club'), 
			('34111998','Johnson','Mary',75,2.55,'Band'),('12319665','Huang','Lee',88,3.77,'Sports'),
			('71983772','Zhang','Feng',94,3.84,'Choir'), ('08675309','Tutone','Jenny',59,1.81,'Band'), 
			('03111952','Adams','Douglas',42,3.16,'Book Club'), ('99999999','Last','Guy',100,4.00,'Band');

/* Remove "Guy New" for reinsertion of record. */
delete from Student where SID = '01234567'
/* Insert new student record and apply different extracurricular activities for probability assessment. */
/* insert into Student([SID],[LastName],[FirstName],[Score],[GPA], ) values ('01234567','New','Guy',90,3.14) */
/* insert into Student([SID],[LastName],[FirstName],[Score],[GPA],[Extracurricular]) values ('012345667','New','Guy',90,3.14,'Sports') 
   insert into Student([SID],[LastName],[FirstName],[Score],[GPA],[Extracurricular]) values ('01234567','New','Guy',90,3.14,'Choir') 
   insert into Student([SID],[LastName],[FirstName],[Score],[GPA],[Extracurricular]) values ('01234567','New','Guy',90,3.14,'Book Club') 
   insert into Student([SID],[LastName],[FirstName],[Score],[GPA],[Extracurricular]) values ('01234567','New','Guy',90,3.14,'Band')  */

/* Declare total value count variable. */
declare @TotalCount decimal (10,5);
/* Declare variables for probability of extracurricular activities. */
declare @SportsProb decimal(10,5), @ChoirProb decimal(10,5), @BookProb decimal(10,5), @BandProb decimal(10,5);

/* Find probabilities of a student participating in an extracurricular activity. */
set @TotalCount = (select count(*) from Student);
set @SportsProb = (select count(*) from Student where Extracurricular = 'Sports')/@TotalCount;
set @ChoirProb = (select count(*) from Student where Extracurricular = 'Choir')/@TotalCount;
set @BookProb = (select count(*) from Student where Extracurricular = 'Book Club')/@TotalCount;
set @BandProb = (select count(*) from Student where Extracurricular = 'Band')/@TotalCount;

/* Declare the variables to find the probabilities of extracurricular activity participation with each GPA bracket. */
declare @Sports1Prob decimal(10,5), @Sports2Prob decimal(10,5), @Sports3Prob decimal(10,5), 
		@Choir1Prob decimal(10,5), @Choir2Prob decimal(10,5), @Choir3Prob decimal(10,5), 
		@Book1Prob decimal(10,5), @Book2Prob decimal(10,5), @Book3Prob decimal(10,5), 
		@Band1Prob decimal(10,5), @Band2Prob decimal(10,5), @Band3Prob decimal(10,5);

/* Find the probabilities of extracurricular activity participation with each GPA bracket. */
set @Sports1Prob = (select count(*) from Student where Extracurricular = 'Sports' and GPA between 1.00 and 1.99)/@TotalCount;
set @Sports2Prob = (select count(*) from Student where Extracurricular = 'Sports' and GPA between 2.00 and 2.99)/@TotalCount;
set @Sports3Prob = (select count(*) from Student where Extracurricular = 'Sports' and GPA between 3.00 and 4.00)/@TotalCount;
set @Choir1Prob = (select count(*) from Student where Extracurricular = 'Choir' and GPA between 1.00 and 1.99)/@TotalCount;
set @Choir2Prob = (select count(*) from Student where Extracurricular = 'Choir' and GPA between 2.00 and 2.99)/@TotalCount;
set @Choir3Prob = (select count(*) from Student where Extracurricular = 'Choir' and GPA between 3.00 and 4.00)/@TotalCount;
set @Book1Prob = (select count(*) from Student where Extracurricular = 'Book Club' and GPA between 1.00 and 1.99)/@TotalCount;
set @Book2Prob = (select count(*) from Student where Extracurricular = 'Book Club' and GPA between 2.00 and 2.99)/@TotalCount;
set @Book3Prob = (select count(*) from Student where Extracurricular = 'Book Club' and GPA between 3.00 and 4.00)/@TotalCount;
set @Band1Prob = (select count(*) from Student where Extracurricular = 'Band' and GPA between 1.00 and 1.99)/@TotalCount;
set @Band2Prob = (select count(*) from Student where Extracurricular = 'Band' and GPA between 2.00 and 2.99)/@TotalCount;
set @Band3Prob = (select count(*) from Student where Extracurricular = 'Band' and GPA between 3.00 and 4.00)/@TotalCount;

/* Declare the variables to find the probabilities of each GPA bracket with each letter grade of the "Score" field. */
declare @1AProb decimal(10,5), @1BProb decimal(10,5), @1CProb decimal(10,5), @1DProb decimal(10,5), @1FProb decimal(10,5), 
		@2AProb decimal(10,5), @2BProb decimal(10,5), @2CProb decimal(10,5), @2DProb decimal(10,5), @2FProb decimal(10,5), 
		@3AProb decimal(10,5), @3BProb decimal(10,5), @3CProb decimal(10,5), @3DProb decimal(10,5), @3FProb decimal(10,5);

/* Find the probabilities of each GPA bracket with each letter grade of the "Score" field. */
set @1AProb = (select count(*) from Student where GPA between 1.00 and 1.99 and Score between 90 and 100)/@TotalCount;
set @1BProb = (select count(*) from Student where GPA between 1.00 and 1.99 and Score between 80 and 89)/@TotalCount;
set @1CProb = (select count(*) from Student where GPA between 1.00 and 1.99 and Score between 70 and 79)/@TotalCount;
set @1DProb = (select count(*) from Student where GPA between 1.00 and 1.99 and Score between 60 and 69)/@TotalCount;
set @1FProb = (select count(*) from Student where GPA between 1.00 and 1.99 and Score < 60)/@TotalCount;
set @2AProb = (select count(*) from Student where GPA between 2.00 and 2.99 and Score between 90 and 100)/@TotalCount;
set @2BProb = (select count(*) from Student where GPA between 2.00 and 2.99 and Score between 80 and 89)/@TotalCount;
set @2CProb = (select count(*) from Student where GPA between 2.00 and 2.99 and Score between 70 and 79)/@TotalCount;
set @2DProb = (select count(*) from Student where GPA between 2.00 and 2.99 and Score between 60 and 69)/@TotalCount;
set @2FProb = (select count(*) from Student where GPA between 2.00 and 2.99 and Score < 60)/@TotalCount;
set @3AProb = (select count(*) from Student where GPA between 3.00 and 4.00 and Score between 90 and 100)/@TotalCount;
set @3BProb = (select count(*) from Student where GPA between 3.00 and 4.00 and Score between 80 and 89)/@TotalCount;
set @3CProb = (select count(*) from Student where GPA between 3.00 and 4.00 and Score between 70 and 79)/@TotalCount;
set @3DProb = (select count(*) from Student where GPA between 3.00 and 4.00 and Score between 60 and 69)/@TotalCount;
set @3FProb = (select count(*) from Student where GPA between 3.00 and 4.00 and Score < 60)/@TotalCount;

/* Insert probabilities into probability column. */
update Student set Probability = (@SportsProb * @Sports1Prob * @1FProb) where SID = '00000000';
update Student set Probability = (@ChoirProb * @Choir2Prob * @2DProb) where SID = '15331894';
update Student set Probability = (@SportsProb * @Sports2Prob * @2FProb) where SID = '34162045';
update Student set Probability = (@BookProb * @Book2Prob * @2CProb) where SID = '19996802';
update Student set Probability = (@BandProb * @Band2Prob * @2CProb) where SID = '34111998';
update Student set Probability = (@SportsProb * @Sports3Prob * @3BProb) where SID = '12319665';
update Student set Probability = (@ChoirProb * @Choir3Prob * @3AProb) where SID = '71983772';
update Student set Probability = (@BandProb * @Band1Prob * @1FProb) where SID = '08675309';
update Student set Probability = (@BookProb * @Book3Prob * @3FProb) where SID = '03111952';
update Student set Probability = (@BandProb * @Band3Prob * @3AProb) where SID = '99999999';
/* update Student set Probability = (@SportsProb * @Sports3Prob * @3AProb) where SID = '01234567';
   update Student set Probability = (@ChoirProb * @Sports3Prob * @3AProb) where SID = '01234567'; 
   update Student set Probability = (@BookProb * @Sports3Prob * @3AProb) where SID = '01234567';
   update Student set Probability = (@BandProb * @Band3Prob * @3AProb) where SID = '01234567'; */


/* Results for "Guy New:" Sports - 0.018; Choir - 0.014; Book Club - 0.014; Band - 0.018 */

/* Display results. */
select * from Student;

/* Drop table for recreation */
drop table BusyStudent;
/* Create new table for finding and comparing busyness of students. */
create table BusyStudent (
    SID varchar(8) not null,
	LastName varchar(20) not null,
	FirstName varchar(20) not null,
	GPA float(3) not null,
	Extracurricular numeric(20),
	Probability decimal(10,3),
	primary key (SID));

/* Copy over all values except "Extracurricular" field from table "Student" into table "BusyStudent." */
insert into BusyStudent([SID], [LastName], [FirstName], [GPA], [Probability])
     select SID, LastName, FirstName, GPA, Probability from Student
	 
/* Allocate numbers for each "Extracurricular" activity per student. */
update BusyStudent set Extracurricular = 4 where SID = '00000000';
update BusyStudent set Extracurricular = 2 where SID = '15331894';
update BusyStudent set Extracurricular = 4 where SID = '34162045';
update BusyStudent set Extracurricular = 1 where SID = '19996802';
update BusyStudent set Extracurricular = 3 where SID = '34111998';
update BusyStudent set Extracurricular = 4 where SID = '12319665';
update BusyStudent set Extracurricular = 2 where SID = '71983772';
update BusyStudent set Extracurricular = 3 where SID = '08675309';
update BusyStudent set Extracurricular = 1 where SID = '03111952';
update BusyStudent set Extracurricular = 3 where SID = '99999999';
update BusyStudent set Extracurricular = 3 where SID = '01234567'; 

/* Calculate busyness of students and display results in descending order. */
select LastName, FirstName, GPA, Extracurricular, Probability,
			(Probability * (GPA/4 + Extracurricular/4)) as Busyness from BusyStudent order by Busyness desc
