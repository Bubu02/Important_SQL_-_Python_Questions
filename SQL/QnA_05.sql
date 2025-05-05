--Write a query to rank employees by salary within their respective department, with the highest salary getting rank 1.

SELECT e.EmployeeName, d.DepartmentName, s.SalaryAmount,
       RANK() OVER (PARTITION BY d.DepartmentID ORDER BY s.SalaryAmount DESC) AS SalaryRank
FROM Salaries s
JOIN Employees e ON s.EmployeeID = e.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE YEAR(s.SalaryDate) = 2025;