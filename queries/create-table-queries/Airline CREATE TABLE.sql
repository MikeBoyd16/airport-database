CREATE TABLE Airline
(
	AirlineName		VARCHAR(20),
	AirlinePhoneNo	CHAR(15) CONSTRAINT AirlinePhoneNoRequired NOT NULL,
	AirlineCity		VARCHAR(30),
	AirlineState	CHAR(2),
	AirlineZip		CHAR(5),
	AirlineStreet	VARCHAR(40),

	CONSTRAINT PKAirlineName PRIMARY KEY (AirlineName),
)