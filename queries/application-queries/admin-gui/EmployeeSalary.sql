SELECT
	EmpFirstName, EmpLastName,
	('$' + LEFT(CONVERT(VARCHAR(12),EmpSalary,1),2) + ',' + RIGHT(CONVERT(VARCHAR(12),EmpSalary,1),3)) AS 'Salary'

FROM
	Employee

ORDER BY
	EmpSalary DESC