SELECT
	COUNT(DISTINCT Flight.FlightNo) AS 'Total Flights',
	COUNT(DISTINCT EmpNo) AS 'On Shift Employees',
	COUNT(DISTINCT PassNo) AS 'Total Passengers',
	COUNT(CASE WHEN PassResStatus = 'CANCELLED' THEN 1 END) AS 'Reservations Cancelled',
	COUNT(CASE WHEN FlightCancellation = 'YES' THEN 1 END) AS 'Flights Cancelled'

FROM
	Flight, Employee, Passenger

WHERE
	Flight.FlightNo = Passenger.FlightNo
	AND Flight.PlaneNo = Employee.PlaneNo