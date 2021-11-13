CREATE TABLE tulajdonos(
	Tkod INTEGER(3) NOT NULL PRIMARY KEY,
	nev VARCHAR(20),
	varos VARCHAR(20)
);

CREATE TABLE auto(
	rendszam CHAR(7) NOT NULL PRIMARY KEY,
	tipus VARCHAR(25) NOT NULL,
	szin VARCHAR(15),
	kor INTEGER(2),
	ar INTEGER(8),
	tulaj INTEGER(3),
	FOREIGN KEY (tulaj) REFERENCES tulajdonos(Tkod)
);

//////////////////////////////////////////////////////////////////////////////////////////

INSERT INTO tulajdonos VALUES(101, "Kis János", "Miskolc");
INSERT INTO tulajdonos VALUES(102, "Kis Éva", "Szerencs");
INSERT INTO tulajdonos VALUES(103, "Retek Ödön", "Miskolc");
INSERT INTO tulajdonos VALUES(104, "Virag Zoltán", "Nyék");
INSERT INTO tulajdonos VALUES(105, "Nagy Eszter", "Nyék");
INSERT INTO tulajdonos VALUES(106, "Kovács Magor", "Szerencs");
INSERT INTO tulajdonos VALUES(107, "Asztal Antal", "Miskolc");

INSERT INTO auto VALUES("FER-831", "Opel Corsa", "piros", 18, 390, 101);
INSERT INTO auto VALUES("IXJ-239", "Suzuki Swift", "zold", 15, 450, 105);
INSERT INTO auto VALUES("JAH-425", "Skoda Fabia", "piros", 13, 620, 102);
INSERT INTO auto VALUES("MLM-211", "Toyota Yaris", "feher", 3, 1850, 105);
INSERT INTO auto VALUES("KFT-204", "Opel Astra", "szurke", 7, 1250, 106);
INSERT INTO auto VALUES("JCD-443", "Opel Astra", "feher", 12, 990, 107);
INSERT INTO auto VALUES("KAP-290", "BMW 316", "fekete", 6, 3250, 102);
INSERT INTO auto VALUES("GDF-525", "Renault Twingo", "fekete", 16, 280, NULL);
INSERT INTO auto VALUES("HUB-936", "Suzuki Swift", "fekete", 16, 500, NULL);

//////////////////////////////////////////////////////////////////////////////////////////

//1
SELECT `auto`.`rendszam`, `tulajdonos`.`nev`
FROM `auto` 
LEFT JOIN `tulajdonos` ON `auto`.`tulaj` = `tulajdonos`.`Tkod`;

//2
SELECT `tulajdonos`.`nev`, `auto`.`rendszam`, `auto`.`tipus`, `auto`.`szin`, `auto`.`kor`, `auto`.`ar`, `auto`.`tulaj`, `tulajdonos`.`varos`
FROM `tulajdonos` 
LEFT JOIN `auto` ON `auto`.`tulaj` = `tulajdonos`.`Tkod`
WHERE auto.rendszam != 'NULL' AND `tulajdonos`.`varos` = 'Miskolc';

//3
SELECT auto.tipus, auto.ar
FROM auto;

//4
SELECT tulajdonos.nev, auto.rendszam
FROM tulajdonos
LEFT JOIN auto ON auto.tulaj = tulajdonos.Tkod;

//5
SELECT auto.rendszam, tulajdonos.nev
FROM auto
LEFT JOIN tulajdonos ON tulajdonos.Tkod = auto.tulaj;

//6
SELECT auto.rendszam
FROM auto
WHERE auto.ar > (SELECT AVG(auto.ar) FROM tulajdonos LEFT JOIN auto ON auto.tulaj = tulajdonos.Tkod WHERE auto.rendszam != 'NULL' AND tulajdonos.varos = 'Miskolc');

//7
