USE DJA75O;

CREATE TABLE tanfolyam (
	tkod int NOT NULL PRIMARY KEY,
	ar int,
	tipus VARCHAR(30),
	megnevezes VARCHAR(100)
);

CREATE TABLE resztvevo (
	tajszam int(9) NOT NULL PRIMARY KEY,
	nev VARCHAR(30),
	lakcim VARCHAR(70)
);

CREATE TABLE tr_kapcsolo (
	tanfolyam_id int NOT NULL,
	FOREIGN KEY (tanfolyam_id) REFERENCES tanfolyam(tkod),
	resztvevo_id int NOT NULL,
	FOREIGN KEY (resztvevo_id) REFERENCES resztvevo(tajszam),
	befizetes int NOT NULL
);