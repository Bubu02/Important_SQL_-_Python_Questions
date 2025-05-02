--Write a query to find the total salary paid to employees in each department for the year 2025.

SELECT d.DepartmentName,
		SUM(s.SalaryAmount) AS TotalSalary
FROM Salaries s
JOIN Employees e
ON s.EmployeeID = e.EmployeeID
JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE YEAR(s.SalaryDate) = 2025
GROUP BY d.DepartmentName;