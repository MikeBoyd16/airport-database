SELECT
	EmpFirstName, EmpLastName, PlaneNo

FROM
	Employee

WHERE
	PlaneNo IS NOT NULL

ORDER BY
	PlaneNo ASC