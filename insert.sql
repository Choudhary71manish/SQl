
CREATE DATABASE newjob;
-- use newjob;
CREATE TABLE jobs (
     job_id INT PRIMARY KEY,
   job_name VARCHAR(100),
    maximum_salary DECIMAL(10,2),
    minimum_salary DECIMAL(10,2)
);

INSERT INTO jobs (job_name, maximum_salary, minimum_salary)
VALUES ('Software Developer', 120000.00, 80000.00),
       ('Marketing Manager', 100000.00, 70000.00),
       ('Sales Representative', 80000.00, 50000.00),
       ('Human Resources Specialist', 90000.00, 60000.00),
       ('Customer Service Representative', 60000.00, 40000.00);




CREATE TABLE employees  (
  employee_id INT PRIMARY KEY,
  f_name VARCHAR(50) NOT NULL,  -- Added NOT NULL constraint for first name
  l_name VARCHAR(50) NOT NULL,  -- Added NOT NULL constraint for last name
  email VARCHAR(100) UNIQUE,  -- Added UNIQUE constraint for unique email addresses
  phone VARCHAR(20),
  hire_date DATE,
  job_id INT,
  salary DECIMAL(10,2),
  commission DECIMAL(10,2),
  manager_id INT,
  dept_id INT,
  FOREIGN KEY (job_id) REFERENCES Jobs(job_id),
  FOREIGN KEY (manager_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO employees (f_name, l_name, email, phone, hire_date, job_id, salary, commission, manager_id, dept_id)
VALUES
  ('John', 'Doe', 'john.doe@company.com', '123-456-7890', '2023-07-01', 1, 90000.00, 1000.00, NULL, 1),
  ('Jane', 'Smith', 'jane.smith@company.com', '987-654-3210', '2022-06-15', 2, 85000.00, 500.00, 1, 1),
  ('Michael', 'Lee', 'michael.lee@company.com', '555-123-4567', '2024-01-01', 3, 100000.00, 2000.00, NULL, 2),
  ('Olivia', 'Jones', 'olivia.jones@company.com', '333-789-0123', '2023-05-10', 4, 75000.00, NULL, 2, 2),
  ('William', 'Brown', 'william.brown@company.com', '222-567-8901', '2021-12-25', 1, 80000.00, 800.00, 1, 1);









CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    manager_id INT,
    location_id INT,
    
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
    FOREIGN KEY (location_id) REFERENCES locations(location_id)

); 
INSERT INTO departments (dept_id, dept_name, manager_id, location_id)
VALUES (1,'Engineering', 1, 2),  -- Department 1: Engineering, Manager ID 1, Location ID 2
       (2,'Marketing', 3, 1),     -- Department 2: Marketing, Manager ID 3, Location ID 1
       (3,'Sales', NULL, 3),        -- Department 3: Sales, No manager assigned (NULL), Location ID 3
       (4,'Human Resources', 2, 2),-- Department 4: Human Resources, Manager ID 2, Location ID 2
       (5,'Finance', 4, 1);        -- Department 5: Finance, Manager ID 4, Location ID 1






CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    city VARCHAR(100),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);
INSERT INTO locations (city, country_id)
VALUES ('New York City', 1),  -- Assuming country_id 1 represents USA
       ('London', 2),        -- Assuming country_id 2 represents UK
       ('Tokyo', 3),          -- Assuming country_id 3 represents Japan
       ('Paris', 4),           -- Assuming country_id 4 represents France
       ('Berlin', 5);          -- Assuming country_id 5 represents Germany








CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR,
);
INSERT INTO countries (country_id , country_name)
VALUES (1,'United States'),
       (2,'Canada'),
       (3,'United Kingdom'),
       (4,'France'),
       (5,'Germany');


