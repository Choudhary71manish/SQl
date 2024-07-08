CREATE DATABASE JOB;

CREATE TABLE jobs (
     job_id INT PRIMARY KEY,
   job_name VARCHAR(100),
    maximum_salary DECIMAL(10,2),
    minimum_salary DECIMAL(10,2)

);


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
  FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE deparments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    manager_id INT,
    location_id INT,
    
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
    FOREIGN KEY (location_id) REFERENCES locations(location_id)

);
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    city VARCHAR(100),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countrys(country_id)
);
CREATE TABLE countrys (
    country_id INT PRIMARY KEY,
    country_name VARCHAR,

);


