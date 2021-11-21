USE DJA75O;

CREATE TABLE gyarto (
	adoszam int NOT NULL PRIMARY KEY,
	nev VARCHAR(30),
	telephely VARCHAR(30),
	irsz VARCHAR(4),
	varos VARCHAR(40),
	utca VARCHAR(100)
);

CREATE TABLE termek (
	tkod int NOT NULL PRIMARY KEY,
	nev VARCHAR(50),
	ear int NOT NULL,
	gyarto int NOT NULL,
	FOREIGN KEY (gyarto) REFERENCES gyarto(adoszam)
);

CREATE TABLE egysegek (
	aru int,
	FOREIGN KEY (aru) REFERENCES termek(tkod),
	db int NOT NULL
);

CREATE TABLE alkatresz (
	akod int NOT NULL PRIMARY KEY,
	nev VARCHAR(50)
);

CREATE TABLE komponens (
	termek int,
	FOREIGN KEY (termek) REFERENCES termek(tkod),
	alkatresz int,
	FOREIGN KEY (alkatresz) REFERENCES alkatresz(akod)
);
