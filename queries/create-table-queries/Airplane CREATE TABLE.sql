CREATE TABLE Airplane
(
	PlaneNo				CHAR(5),
	PlaneType			VARCHAR(20) CONSTRAINT PlaneTypeRequired NOT NULL,
	PlaneRepairStatus	CHAR(10) CONSTRAINT PlaneRepairStatusRequired NOT NULL,
	PlaneInFlightStatus	CHAR(10) CONSTRAINT PlaneInFlightStatusRequired NOT NULL,
	PlaneSeatCapA		INT,
	PlaneSeatCapB		INT,
	PlaneSeatCapC		INT,
	AirlineName			VARCHAR(20) CONSTRAINT AirlineNameRequired NOT NULL, 

	CONSTRAINT PKPlaneNo PRIMARY KEY (PlaneNo),
	CONSTRAINT FKAirlineName FOREIGN KEY (AirlineName) REFERENCES Airline
	ON UPDATE CASCADE 
	ON DELETE CASCADE
)
