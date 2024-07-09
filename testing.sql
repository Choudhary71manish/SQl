
CREATE DATABASE newjob;
-- use newjob;
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (job_id) REFERENCES departments(job_id)
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    job_id INT
)

  