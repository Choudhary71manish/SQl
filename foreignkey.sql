-- sql foreign key constraint 

-- a foreign key  is a field (or collection of fields) 
-- in one table , that refers to the **primary key in another table**

-- foreign key  create

CREATE TABLE orders (
    order_id INT NOT NULL PRIMARY KEY,
    order_no INT NOT NULL,
    person_id INT,
    
    FOREIGN KEY (person_id) REFERENCES persons(person_id)   --error** make after 1st is persons table then create orders(becouse in have a foreign key)
);

CREATE TABLE persons (
    person_id INT NOT NULL PRIMARY KEY,
    l_name VARCHAR(255),
    f_name VARCHAR(255),
    age INT

);

-- sql foreign key on alter table

alter table orders
add foreign key (person_id) references persons(person_id);

-- * to allow naming of a foreign key constraint 

-- normal 
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

-- alter 
alter table orders
add constraint fk_personorder
foreign key (person_id) references persons(person_id)


-- drop foreign key
--mysql
alter table orders 
drop foreign key fk_personorder;

--sql oracle ms
alter table orders 
drop constraint fk_personoder;

