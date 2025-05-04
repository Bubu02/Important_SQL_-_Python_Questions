--Write a query to find the employee with the highest salary in each department in the year 2025.

SELECT e.EmployeeName,
		d.DepartmentName,
		s.SalaryAmount
FROM Salaries s
JOIN Employees e
ON s.EmployeeID = e.EmployeeID
JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE YEAR(s.SalaryDate) = 2025
AND s.SalaryAmount = (
	SELECT MAX(SalaryAmount) 
	FROM Salaries s2
	JOIN Employees e2
	ON s2.EmployeeID = e2.EmployeeID
	WHERE e2.DepartmentID = e.DepartmentID);