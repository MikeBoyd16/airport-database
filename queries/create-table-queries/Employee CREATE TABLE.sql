CREATE TABLE Employee
( 
	EmpNo 			CHAR(8),
	SupEmpNo 		CHAR(8),
	EmpFirstName 	VARCHAR(30) CONSTRAINT EmpFirstNameRequired NOT NULL,
	EmpLastName 	VARCHAR(30) CONSTRAINT EmpLastNameRequired NOT NULL,
	EmpPhoneNo 		CHAR(15) CONSTRAINT EmpPhoneNoRequired NOT NULL,
	EmpEmail		VARCHAR(40),
	EmpCity			VARCHAR(30),
	EmpState		CHAR(2),
	EmpZip			CHAR(5),
	EmpStreet		VARCHAR(40),
	EmpTitle		VARCHAR(30),
	EmpSalary		DECIMAL(19,4),
	PortNo			CHAR(6) CONSTRAINT PortNoRequired NOT NULL,
	PlaneNo			CHAR(5),
	
	CONSTRAINT PKEmployee PRIMARY KEY (EmpNo),
	CONSTRAINT FKPortNo FOREIGN KEY (PortNo) REFERENCES Airport,
	CONSTRAINT FKEmpPlaneNo FOREIGN KEY (PlaneNo) REFERENCES Airplane
	ON UPDATE CASCADE 
	ON DELETE CASCADE,
	CONSTRAINT FKSupEmpNo FOREIGN KEY (SupEmpNo) REFERENCES Employee
)