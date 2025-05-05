--Write a query to display only the top 3 highest salaries within each department.
WITH RankedSalaries AS (
	SELECT e.EmployeeID,
			e.EmployeeName,
			d.DepartmentName,
			DENSE_RANK() 
			OVER (PARTITION BY d.DepartmentName 
			ORDER BY s.SalaryAmount) AS HeightestSalary
	FROM Salaries s
	JOIN Employees e
	ON s.EmployeeID = s.EmployeeID
	JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
	WHERE YEAR(s.SalaryDate) = 2025)

SELECT EmployeeName, DepartmentName, HeightestSalary
FROM RankedSalaries
WHERE HeightestSalary <= 3;