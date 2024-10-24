USE LAB2;
CREATE TABLE Employees(
    emp_id int,
    name VARCHAR(225), 
    age int, 
    department_id int,
    salary int
);

CREATE TABLE Departments(
    dept_id int,
    dept_name VARCHAR(255), 
    location VARCHAR(255)
);

CREATE TABLE Projects(
    proj_id int,
    proj_name VARCHAR(255), 
    dept_id int,
    budget int
);

CREATE TABLE Works_On(
    emp_id int,
    proj_id int,
    hours int
);

CREATE TABLE Salaries(
    emp_id INT,
    year INT,
    annual_salary INT
);


INSERT INTO Employees (emp_id, name, age, department_id, salary) VALUES
(1, 'Alice', 30, 101, 60000),
(2, 'Bob', 45, 102, 80000),
(3, 'Charlie', 28, 103, 55000),
(4, 'David', 35, 101, 70000),
(5, 'Eve', 29, 104, 58000);

INSERT INTO Departments (dept_id, dept_name, location) VALUES
(101, 'Human Resources', 'New York'),
(102, 'Finance', 'Chicago'),
(103, 'Engineering', 'San Francisco'),
(104, 'Marketing', 'Boston');


INSERT INTO Projects (proj_id, proj_name, dept_id, budget) VALUES
(1001, 'Project Alpha', 103, 150000),
(1002, 'Project Beta', 101, 120000),
(1003, 'Project Gamma', 104, 100000),
(1004, 'Project Delta', 102, 180000);


INSERT INTO Works_On (emp_id, proj_id, hours) VALUES
(1, 1001, 30),
(2, 1004, 25),
(3, 1001, 40),
(4, 1002, 35),
(5, 1003, 20);

INSERT INTO Salaries (emp_id, year, annual_salary) VALUES
(1, 2023, 60000),
(2, 2023, 80000),
(3, 2023, 55000),
(4, 2023, 70000),
(5, 2023, 58000);
