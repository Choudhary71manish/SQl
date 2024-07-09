-- sql primary key constraint 

CREATE TABLE persons (
    id INT NOT NULL,
    f_name VARCHAR(255),
    l_name VARCHAR(255),
    
    PRIMARY KEY (id)

);

-- sql server /oracls / Ms access

CREATE TABLE persons (
    id INT NOT NULL PRIMARY KEY,
    f_name VARCHAR(255),
    l_name VARCHAR(255),
    
    

);

-- primary key constaint on multiple columns 

CREATE TABLE persons (
    id INT NOT NULL,
    f_name VARCHAR(255),
    l_name VARCHAR(255),
    
    CONSTRAINT pK_person PRIMARY KEY (id ,l_name)

);

-- primary key constaint on Alter table

ALTER TABLE persons
ADD PRIMARY KEY (id);

-- primary key constaint on multiple columns
ALTER TABLE persons
ADD CONSTRAINT pk_parson PRIMARY KEY (id , l_name);


-- to drop primary constraint 

ALTER TABLE persons
DROP PRIMARY KEY;

-- **SQL SERVER AND ORACLE MS ACCESS

ALTER TABLE persons
DROP CONSTRAINT pk_parson;

