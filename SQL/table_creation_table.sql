--creating sales table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductCategory VARCHAR(50),
    ProductName VARCHAR(100),
    Quantity INT,
    PricePerUnit DECIMAL(10, 2),
    SaleDate DATE
);

--inserting values
INSERT INTO Sales (SaleID, ProductCategory, ProductName, Quantity, PricePerUnit, SaleDate) VALUES
(1, 'Electronics', 'Smartphone', 10, 599.99, '2025-04-01'),
(2, 'Electronics', 'Laptop', 5, 899.99, '2025-04-02'),
(3, 'Furniture', 'Chair', 15, 49.99, '2025-04-03'),
(4, 'Furniture', 'Table', 3, 199.99, '2025-04-04'),
(5, 'Electronics', 'Smartwatch', 20, 199.99, '2025-04-05');

--creating EmployeeProjects table
CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    ProjectName VARCHAR(100),
    ProjectStartDate DATE,
    ProjectEndDate DATE,
    PRIMARY KEY (EmployeeID, ProjectID)
);

--inserting values
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, ProjectName, ProjectStartDate, ProjectEndDate) VALUES
(101, 1, 'AI Development', '2024-05-01', '2024-09-01'),
(101, 2, 'Dashboard Creation', '2024-06-01', '2024-12-01'),
(101, 3, 'Data Cleaning', '2024-07-01', '2025-01-01'),
(102, 4, 'API Integration', '2024-05-15', '2024-08-15'),
(102, 5, 'Security Audit', '2024-09-01', '2024-12-01'),
(101, 6, 'Visualization Updates', '2024-11-01', '2025-02-01'),
(103, 7, 'Server Migration', '2024-06-15', '2024-09-15');

--creating product table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    QuantitySold INT,
    LastRestocked DATE
);

--inserting values
INSERT INTO Products (ProductID, ProductName, QuantitySold, LastRestocked) VALUES
(1, 'Smartphone', 120, '2025-03-25'),
(2, 'Laptop', 85, '2025-03-15'),
(3, 'Tablet', 50, '2025-04-01'),
(4, 'Smartwatch', 150, '2025-04-01'),
(5, 'Headphones', 95, '2025-03-20'),
(6, 'Keyboard', 40, '2025-03-10'),
(7, 'Monitor', 75, '2025-03-30');

--creating department table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerID INT
);

--inserting the values
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID) VALUES
(1, 'HR', 201),
(2, 'IT', 202),
(3, 'Finance', 203),
(4, 'Marketing', 204);

--creating salaries table
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT,
    SalaryAmount DECIMAL(10, 2),
    SalaryDate DATE
);

--inserting values
INSERT INTO Salaries (SalaryID, EmployeeID, SalaryAmount, SalaryDate) VALUES
(1, 101, 55000, '2024-04-01'),
(2, 101, 58000, '2025-04-01'),
(3, 102, 45000, '2024-04-01'),
(4, 102, 47000, '2025-04-01'),
(5, 103, 40000, '2024-04-01'),
(6, 103, 42000, '2025-04-01');

--creating projects table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    DepartmentID INT,
    StartDate DATE,
    EndDate DATE
);

--inserting values
INSERT INTO Projects (ProjectID, ProjectName, DepartmentID, StartDate, EndDate) VALUES
(1, 'AI Development', 2, '2024-01-01', '2024-06-30'),
(2, 'Marketing Campaign', 4, '2024-02-01', '2024-07-31'),
(3, 'Budget Planning', 3, '2024-03-01', '2024-09-30'),
(4, 'Employee Recruitment', 1, '2024-04-01', '2024-08-31'),
(5, 'Server Upgrade', 2, '2024-05-01', '2024-10-31');

--creating employee table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    DepartmentID INT
);

--inserting values
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID) VALUES
(101, 'Alice', 2), -- IT
(102, 'Bob', 3),   -- Finance
(103, 'Charlie', 1), -- HR
(104, 'David', 4);  -- Marketing;

