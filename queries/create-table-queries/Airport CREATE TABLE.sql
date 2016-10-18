CREATE TABLE Airport
(
	PortNo				CHAR(6),
	PortName			VARCHAR(50),
	PortStatus			CHAR(10) CONSTRAINT PortStatusRequired NOT NULL,
	PortCity			VARCHAR(30),
	PortStateProvince	CHAR(2),
	PortCountry			VARCHAR(30),

	CONSTRAINT PKPortNo PRIMARY KEY (PortNo)
)