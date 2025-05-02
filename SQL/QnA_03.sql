--Write a query to find the department with the highest total salary paid in the year 2025.

SELECT TOP 1 d.DepartmentName,
		SUM(s.SalaryAmount) AS TotalSalary
FROM Salaries s
JOIN Employees e
ON s.EmployeeID = e.EmployeeID
JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE YEAR(s.SalaryDate) = 2025
GROUP BY d.DepartmentName
ORDER BY TotalSalary;

--sql server does not support LIMIT