DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department (
  dept_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dept_name VARCHAR(30)
);

CREATE TABLE job (
  job_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(6,2),
  dept_id INTEGER,
    FOREIGN KEY (dept_id)
    REFERENCES department (dept_id)
    ON DELETE SET NULL
);

CREATE TABLE employee (
  emp_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  job_id INTEGER,
    FOREIGN KEY (job_id)
    REFERENCES job (job_id)
    ON DELETE SET NULL,
  manager_id INTEGER,
    FOREIGN KEY (emp_id)
    REFERENCES employee (emp_id)
    ON DELETE SET NULL
);