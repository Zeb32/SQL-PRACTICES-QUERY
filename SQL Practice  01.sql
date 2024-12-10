-- Create Data Base
CREATE database Practice
 
 -- Use DataBase
use practice
 
 -- Craete Table
create TABLE Movie
(
MovieD int,
MovieName varchar(50),
Actor varchar(50),
Rating int
)

create TABLE Customer
(
CusID int,
NameName varchar(50),
MovieID varchar(50),
RentDate datetime
)

-- Alter Column Name
Alter table customer
change NameName Name varchar(50) ;

-- Retreve Data from Table
select * from Movie
select * from customer

-- Delete Data / Row from Table
Delete from movie
where moviename like '%Dark Knight%'
 
 -- Insert Data into Table

-- Movie
insert into movie (MovieD,MovieName,Actor,Rating)
value (1," The Departed","Leonardo",8.5)
insert into movie (MovieD,MovieName,Actor,Rating)
value (1," The Dark Knight","Cridtable Bale",9.4);
insert into movie (MovieD,MovieName,Actor,Rating)
value (1," Dune","Timothee",9);
insert into movie (MovieD,MovieName,Actor,Rating)
value (1," Mad Max Fury Road","Tom Hardy",8);

-- Customer
insert into customer (CusID,Name,MovieID,RentDate)
value (1,"Ali","1","2020-10-10");
insert into customer (CusID,Name,MovieID,RentDate)
value (2,"Zeb","2","2023-10-11");
insert into customer (CusID,Name,MovieID,RentDate)
value (3,"Khan","3","2024-10-10");

-- Update Data in Table
update movie 
set movieD = 4
where moviename like '%Mad Max%'

-- Add column in Table & Put Data into New Column

Alter table Movie
Add ReleasedYear int

update movie 
set releasedyear =
case
when MovieD = 1 then '2006'
when MovieD = 2 then '2008'
when MovieD = 3 then '2023'
when MovieD = 4 then '2020'
else null
end

-- Delete TAble
Drop table customer

-- Primery Key 
create TABLE Customer
(
CusID int primary key,
NameName varchar(50),
MovieID varchar(50),
RentDate datetime
)

-- Where clause
Select * 
from movie
where Actor = "leonardo" or actor = "tom Hardy"

-- Select Specific Column
Select moviename,Actor 
from movie
where Actor = "leonardo" or actor = "tom Hardy"

-- join
select customer.name, moviename,actor from customer
inner join movie on customer.cusID = movie.movieD


-- foreign Key Connection
alter table customer
add foreign key (MovieID) reference movie(movieD)


 