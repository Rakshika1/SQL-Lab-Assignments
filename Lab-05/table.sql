USE Lab05;

-- Create EmployeeDetails table
CREATE TABLE EmployeeDetails(
    EmployeeId INT PRIMARY KEY,  -- Set EmployeeId as the primary key
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Salary INT,
    JoiningDate DATETIME,        -- Use DATETIME for proper date-time handling
    Department VARCHAR(255),
    Gender VARCHAR(255)git branch

);

-- Create ProjectDetails table
CREATE TABLE ProjectDetails(
    ProjectDetailID INT PRIMARY KEY,  -- Set ProjectDetailID as the primary key
    EmployeeDetailID INT,             -- Foreign key column
    ProjectName VARCHAR(255),
    FOREIGN KEY (EmployeeDetailID) REFERENCES EmployeeDetails(EmployeeId)  -- Reference to EmployeeDetails
);

-- Insert data into EmployeeDetails
INSERT INTO EmployeeDetails (EmployeeId, FirstName, LastName, Salary, JoiningDate, Department, Gender) 
VALUES
(1, 'Vikas', 'Ahlawat', 600000, '2013-02-15 11:16:28', 'IT', 'Male'),
(2, 'Nikita', 'Jain', 530000, '2014-01-09 17:31:08', 'HR', 'Female'),
(5, 'Arish', 'Kadian', 500000, '2024-01-09 09:31:08', 'Payroll', 'Male');

-- Example insert into ProjectDetails
INSERT INTO ProjectDetails (ProjectDetailID, EmployeeDetailID, ProjectName)
VALUES
(1, 1, 'AI Development'),
(2, 2, 'HR Management System');
