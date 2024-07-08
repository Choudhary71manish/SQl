
CREATE TABLE country  (
   conuntry_id INT(10) PRIMARY KEY,
    country_name CHAR(100),
    region_id INT(50)

);

INSERT INTO country( conuntry_id, country_name ,region_id)
VALUES 
(1,'INDIA',1),
(2,'AUSTRIA',1),
(3,'UK',2),
(4,'USA',2),
(5,'IRAN',3),
(6,'UAE',3);


CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    street_address VARCHAR(255),
    postal_code VARCHAR(100),
    city VARCHAR(100),
    country_id INT ,
    FOREIGN KEY (country_id) REFERENCES Country(country_id)
    );

INSERT INTO Location (location_id , street_address , postal_code , city , country_id)
VALUES
(1, 'sardarpura','12345','jodhpur',1),
(2, 'sardarpura','45216','jodhpur',1),
(3, 'kudi','75462','pali',2),
(4, 'luni','98546','pali',2),
(5, 'kudi2','54321','bkn',3);
 
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    manager_id INT,
    location_id INT,
    FOREIGN KEY (manager_id) REFERENCES employee(employee_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);

INSERT INTO Department (dept_id , dept_name , manager_id, location_id)
VALUES
(70,'hr',1,2),
(71,'manager',1,2),
(72,'it',1,2),
(73,'marketing',1,2),
(74,'sales',1,2);

CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100),
    maximum_salary decimal(10,2),
    minimum_salary decimal(10,2)
);

INSERT INTO jobs (job_id, job_title, maximum_salary,minimum_salary)
VALUES
(1, 'Manager', 80000.00, 60000.00),
(2, 'Financial Analyst', 70000.00, 50000.00),
(3, 'Software Engineer', 90000.00, 65000.00);


CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    email VARCHAR(20),
    phone VARCHAR(20),
    hire_date date,
    job_id INT,
    salary decimal(10,2),
    Commission DECIMAL(10,2),
    manager_id INT,
    dept_id INT,
    FOREIGN KEY(job_id) REFERENCES jobs(job_id),
    FOREIGN KEY(manager_id) REFERENCES employee(employee_id),
    FOREIGN KEY(dept_id) REFERENCES Department(dept_id)

);

INSERT INTO Employee (employee_id, f_name, l_name, email, phone, hire_date,job_id,salary, Commission,manager_id,dept_id)
VALUES
(1, 'Vikas', 'Godiya', 'vikasgodiya@gmail.com', '9694643401', '2023-01-15', 1, 50000.00, NULL, NULL, 70),
(2, 'Ashi', 'Phulwani', 'ashiphulwani@gmail.com', '7300140241', '2023-02-20', 2, 60000.00, 2000.00, 1, 71),
(3, 'Vishal', 'Soni', 'vishalsoni@gmail.com', '7073340691', '2023-03-10', 3, 70000.00, NULL, 1, 71),
(4, 'Anish', 'Chouhan', 'anishchouhan@gmail.com', '8954125478', '2023-04-05', 1, 55000.00, 1500.00, 2, 70),
(5, 'Vinay', 'Gehlot', 'vinaygehlot@gmail.com', '7845124589', '2023-05-20', 2, 62000.00, NULL, 2, 71);


CREATE TABLE job_history (
    employee_id INT ,
    start_date DATE,
    end_date DATE,
    job_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

INSERT INTO Job_History (employee_id, start_date, end_date ,  job_id)
VALUES
(1, '2020-01-01', '2023-01-14', 1),
(2, '2019-05-01', '2023-02-19', 2),
(3, '2018-08-01', '2023-03-09', 3),
(4, '2021-03-01', '2023-04-04', 1),
(5, '2017-11-01', '2023-05-19', 2);



