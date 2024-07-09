 -- sql check on create table 
 
 create table persons (
    id int not null ,
    l_name varchar(255),
    age int ,
    check (age>=18)
 );

 -- sql oracle ms 

 create table persons(
    id int not null ,
    l_name varchar(255),
    age int check (age >= 18)
 );

 -- multple columns

 CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    constraint chk_personage check ( age >=18 And city='sandnes');

-- alter check

alter table persons
add check (age >=18);

-- drop check constraint

alter table persons
drop constraint chk_personage