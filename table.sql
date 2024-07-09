CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

-- ****create table using another table 

create table new_table_name as
select column1, column2,...
from existing_table_name
where ...;

-- ** truncate table
truncate table table_name;


-- drop tabke 
drop table table_name;

-- alter table 

alter table table_name
add column_name datatype;

-- example 

alter table students 
add email varchar(255);

-- drop column
alter table table_name
drop column column_name; 

-- example
ALTER TABLE Customers
DROP COLUMN Email;

-- rename column 
alter table table_name
rename column old_name to new_name;

-- change datatype 
alter table table_name 
alter column column_name datatype;
