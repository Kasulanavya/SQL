-- ===========================
-- 1. Create Database
-- ===========================
DROP DATABASE IF EXISTS company_practice;
CREATE DATABASE company_practice;
USE company_practice;

-- ===========================
-- 2. Departments Table
-- ===========================
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments (dept_name, location) VALUES
('HR', 'New York'),
('IT', 'San Francisco'),
('Sales', 'Chicago'),
('Marketing', 'Los Angeles');

-- ===========================
-- 3. Employees Table
-- ===========================
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    dept_id INT,
    salary DECIMAL(10,2),
    join_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees (name, age, gender, dept_id, salary, join_date) VALUES
('Navya', 25, 'Female', 2, 70000, '2023-01-15'),
('Vamsi', 28, 'Male', 2, 80000, '2022-05-10'),
('Rahul', 30, 'Male', 3, 60000, '2021-09-01'),
('Sita', 26, 'Female', 1, 55000, '2023-03-20'),
('Anil', 35, 'Male', 4, 65000, '2020-11-10'),
('Meera', 27, 'Female', 3, 62000, '2022-07-18'),
('Ravi', 32, 'Male', 2, 90000, '2019-12-01'),
('Pooja', 24, 'Female', 1, 50000, '2023-02-01');

-- ===========================
-- 4. Projects Table
-- ===========================
CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO projects (project_name, start_date, end_date, dept_id) VALUES
('Website Redesign', '2023-01-01', '2023-06-30', 2),
('Recruitment Drive', '2023-02-15', '2023-05-30', 1),
('Sales Expansion', '2023-03-01', '2023-09-30', 3),
('Marketing Campaign', '2023-04-01', '2023-10-15', 4),
('Internal Tool Dev', '2023-05-01', '2023-11-30', 2);

-- ===========================
-- 5. Employee Projects Table
-- ===========================
CREATE TABLE emp_projects (
    ep_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    project_id INT,
    role VARCHAR(50),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

INSERT INTO emp_projects (emp_id, project_id, role) VALUES
(1, 1, 'Developer'),
(2, 1, 'Lead'),
(7, 5, 'Lead'),
(3, 3, 'Sales Executive'),
(6, 3, 'Sales Associate'),
(4, 2, 'HR Coordinator'),
(5, 4, 'Marketing Manager'),
(8, 2, 'HR Assistant');

-- ===========================
-- 6. Salaries History Table
-- ===========================
CREATE TABLE salaries_history (
    sh_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    change_date DATE,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO salaries_history (emp_id, old_salary, new_salary, change_date) VALUES
(1, 65000, 70000, '2023-01-15'),
(2, 75000, 80000, '2022-05-10'),
(3, 58000, 60000, '2021-09-01'),
(4, 50000, 55000, '2023-03-20'),
(5, 60000, 65000, '2020-11-10');

-- ===========================
-- Database Ready for Practice
-- ===========================
-- You can now practice:
-- 1. SELECT, WHERE, ORDER BY
-- 2. JOINs (INNER, LEFT, RIGHT)
-- 3. GROUP BY, HAVING
-- 4. Subqueries
-- 5. INSERT, UPDATE, DELETE
-- 6. Aggregation (COUNT, SUM, AVG, MIN, MAX)
-- 7. Many-to-Many relationships (emp_projects)
-- 8. Salary history queries
