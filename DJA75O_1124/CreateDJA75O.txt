CREATE TABLE oktato(
	neptunkod VARCHAR(6) PRIMARY KEY,
	nev VARCHAR(40),
	tanszek VARCHAR(40)
);

CREATE TABLE targy(
	kod VARCHAR(10) PRIMARY KEY,
	kredit INT(1),
	megnevezes VARCHAR(50)
);

CREATE TABLE oktat(
	oktato_neptunkod VARCHAR(6),
	FOREIGN KEY (oktato_neptunkod) REFERENCES oktato(neptunkod),
	targy_kod VARCHAR(10),
	FOREIGN KEY (targy_kod) REFERENCES targy(kod)
);

CREATE TABLE halgato(
	neptunkod VARCHAR(6) PRIMARY KEY,
	nev VARCHAR(40),
	tankor VARCHAR(4),
	szuld INT(8),
	eletkor INT(2),
	irszam INT(4),
	varos VARCHAR(30), 
	utca VARCHAR(50),
	hsz INT(3)
);

CREATE TABLE halgat(
	felev INT(1),
	vizsgajegy INT(1),
	targy_kod VARCHAR(10),
	FOREIGN KEY (targy_kod) REFERENCES targy(kod),
	halgato_neptunkod VARCHAR(6),
	FOREIGN KEY (halgato_neptunkod) REFERENCES halgato(neptunkod)
);