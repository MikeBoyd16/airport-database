CREATE TABLE Passenger
( 
	PassNo 			CHAR(8),
	PassFirstName 	VARCHAR(30) CONSTRAINT PassFirstNameRequired NOT NULL,
	PassLastName 	VARCHAR(30) CONSTRAINT PassLastNameRequired NOT NULL,
	PassAge			CHAR(3),
	PassGender		CHAR(1),
	PassPhoneNo		CHAR(15) CONSTRAINT PassPhoneNoRequired NOT NULL,
	PassEmail		VARCHAR(40),
	PassStreet 		VARCHAR(40),
	PassCity 		VARCHAR(30),
	PassState 		CHAR(2),
	PassZip 		CHAR(5),
	PassSeatClass	CHAR(2) CONSTRAINT PassSeatNoRequired NOT NULL,
	PassResStatus	CHAR(10) CONSTRAINT PassResStatusRequired NOT NULL,
	FlightNo		CHAR(4) CONSTRAINT FlightNoRequired NOT NULL,
	
	CONSTRAINT PKPassenger PRIMARY KEY (PassNo),
	CONSTRAINT FKFlightNo FOREIGN KEY (FlightNo) REFERENCES Flight
	ON UPDATE CASCADE 
	ON DELETE CASCADE 
)