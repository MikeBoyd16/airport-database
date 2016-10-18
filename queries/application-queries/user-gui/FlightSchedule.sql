SELECT
	FlightNo AS 'Flight #', 
	FlightDeparture AS 'Origin', 
	FlightArrival AS 'Destination', 
	LEFT(CONVERT(VARCHAR(5), FlightDepartureTime, 131),5) + ' ' + RIGHT(CONVERT(VARCHAR(30), FlightDepartureTime, 9),2) AS 'Departure',
	LEFT(CONVERT(VARCHAR(5), FlightArrivalTime, 131),5) + ' ' + RIGHT(CONVERT(VARCHAR(30), FlightArrivalTime, 9),2) AS 'Arrival'

FROM
	Flight

ORDER BY
	FlightDepartureTime ASC

