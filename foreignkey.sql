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


