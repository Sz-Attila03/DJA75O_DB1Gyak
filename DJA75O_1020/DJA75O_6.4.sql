USE DJA75O;

CREATE TABLE termekek (
	tkod int PRIMARY KEY,
	nev VARCHAR(50) NOT NULL,
	ear int CHECK (ear > 0),
	kategoria CHAR(20)
);

INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES (1, "lámpát", 2000, "K1");
INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES (2, "seprű", 4000, "K1");
INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES (3, "mosogató gép", 1500, "K2");
INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES (4, "szappan", 1000, "K2");
INSERT INTO termekek(tkod, nev, ear, kategoria) VALUES (5, "pohár", 2400, "K3");