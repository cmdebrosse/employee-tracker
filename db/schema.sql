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
  salary DECIMAL(9,2),
  dept_id INTEGER NOT NULL,
    CONSTRAINT fk_department FOREIGN KEY
    (dept_id) REFERENCES department(dept_id)
      ON DELETE CASCADE
);

CREATE TABLE employee (
  emp_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  job_id INTEGER NOT NULL,
  manager_id INTEGER UNSIGNED,
    CONSTRAINT fk_job FOREIGN KEY
    (job_id) REFERENCES job(job_id)
    ON DELETE CASCADE,
    CONSTRAINT fk_manager FOREIGN KEY
    (manager_id) REFERENCES employee(emp_id)
    ON DELETE SET NULL
);