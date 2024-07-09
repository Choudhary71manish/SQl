-- sql create index
-- indexes are used to retrieve
-- data from the database more quickly than otherwise
-- ** users cannot see the indexs **
-- they are just used to speed up searches / queries.


--index syntax //duplicate values allowed

create table index_name
on table_name (column1 , column2);

-- unique index syntax

create unique index index_name 
on table_name (column1, column2,..);


-- example 

create index id_lastname
on persons (last_name);

-- combination of column
create index id_pname
on person (l_name , f_name);

-- drop index
 
drop index index_name on table_name; --ms access
drop index table_name.index_name ;    -- sql serve

ALTER TABLE table_name
DROP INDEX index_name;  --mysql in
