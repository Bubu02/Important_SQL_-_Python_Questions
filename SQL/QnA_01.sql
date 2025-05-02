--Question_01: Write a query to calculate the average salary of employees in each department.

SELECT d.DepartmentID, AVG(s.SalaryAmount) AS AverageSalaries
FROM Departments d
JOIN Employees e
ON d.DepartmentID = e.DepartmentID
JOIN Salaries s
ON e.EmployeeID = s.EmployeeID
GROUP BY d.DepartmentID;