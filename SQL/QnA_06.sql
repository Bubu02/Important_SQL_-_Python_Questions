--Write a query to calculate the cumulative total salary paid to employees over time, ordered by SalaryDate.
SELECT e.EmployeeID,
		e.EmployeeName,
		SUM(s.SalaryAmount) OVER (ORDER BY s.SalaryDate) AS TotalSalaryOverTime
FROM Employees e
JOIN Salaries s
ON e.EmployeeID = s.EmployeeID;