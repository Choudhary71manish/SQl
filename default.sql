-- sql default constraint 
-- it set a default value for a column

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) default 'jaipur'  -- defualt value
);


-- default getdate()
create table orders (
    id int not null ,
    order_number int not null,
    order_date date  default getdate()
);

-- alter default 
alter table persons 
alter city set default 'jaipur';


-- drop default constraint 
alter table persons 
alter city drop default;
