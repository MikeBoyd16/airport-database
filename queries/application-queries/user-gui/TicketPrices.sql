SELECT
	FlightNo, FlightPriceA, FlightPriceB, FlightPriceC,
	SUM(PlaneSeatCapA + PlaneSeatCapB + PlaneSeatCapC) AS 'Total Plane Capacity'

FROM 
	Flight, Airplane

WHERE
	Flight.PlaneNo = Airplane.PlaneNo

GROUP BY
	FlightNo, FlightPriceA, FlightPriceB, FlightPriceC

ORDER BY 
	FlightPriceA DESC