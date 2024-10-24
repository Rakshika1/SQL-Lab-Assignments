SELECT * from Employees WHERE age > 30;
SELECT * from Departments WHERE dept_name="HR";
SELECT * from Employees WHERE salary<70000;
SELECT * FROM Departments WHERE location = 'New York';
SELECT * FROM Projects WHERE budget > 100000;
SELECT name, age FROM Employees;

SELECT dept_name FROM Departments;
SELECT proj_name, budget FROM Projects;
SELECT emp_id, salary FROM Employees;
SELECT location FROM Departments;

SELECT Employees.name ,Departments.dept_name from Employees
JOIN
Departments on Employees.department_id = Departments.dept_id;

SELECT Projects.proj_name, Departments.location FROM Projects
JOIN Departments ON Projects.dept_id = Departments.dept_id;

SELECT Employees.emp_id, Works_On.proj_id FROM Employees JOIN
Works_On ON Employees.emp_id = Works_On.emp_id;

SELECT Employees.emp_id, Salaries.annual_salary FROM
Employees JOIN Salaries ON Employees.emp_id =
Salaries.emp_id;

SELECT Projects.proj_id, Works_On.emp_id FROM Projects JOIN
Works_On ON Projects.proj_id = Works_On.proj_id;

select emp_id , salary from employee union SELECT emp_id,
annual_salary from Salaries;

SELECT dept_id,location from Departments union SELECT
dept_id,dept_name FROM Departments;

SELECT emp_id,proj_id from Works_On union SELECT emp_id,proj_id FROM
Works_On;


SELECT EMP_ID FROM `Employees


