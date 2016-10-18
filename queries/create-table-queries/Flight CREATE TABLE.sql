CREATE TABLE Flight
(
	FlightNo			CHAR(4),
	FlightDeparture		VARCHAR(30) CONSTRAINT FlightDepartureRequired NOT NULL,
	FlightArrival		VARCHAR(30) CONSTRAINT FlightArrivalRequired NOT NULL,
	FlightArrivalTime	TIME,
	FlightDepartureTime	TIME,
	FlightCancellation	CHAR(3) CONSTRAINT FlightDepartureRequired NOT NULL,
	FlightPriceA		DECIMAL,
	FlightPriceB		DECIMAL,
	FlightPriceC		DECIMAL,
	PlaneReservationsA	INT,
	PlaneReservationsB	INT,
	PlaneReservationsC	INT,
	PlaneNo				CHAR(5) CONSTRAINT PlaneNoRequired NOT NULL,

	CONSTRAINT PKFlightNo PRIMARY KEY (FlightNo),
	CONSTRAINT FKPlaneNo FOREIGN KEY (PlaneNo) REFERENCES Airplane
	ON UPDATE CASCADE 
	ON DELETE CASCADE
)