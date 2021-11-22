//1.1
ALTER TABLE alkatresz ADD (ar INT);

//1.2
INSERT INTO gyarto VALUES (0654897, "ASUS", "Miskolc", 3711, "Miskolc", "Ady Endre");
INSERT INTO gyarto VALUES (0259731, "HP", "Szeged", 3560, "Szeged", "Virag");
INSERT INTO gyarto VALUES (0978316, "ACER", "Pécs", 6483, "Pécs", "Mátyás Király");

INSERT INTO termek VALUES (4521, "ProBook", 250000, 0259731);
INSERT INTO termek VALUES (6975, "Predator", 320000, 0978316);

SELECT `gyarto`.`nev`
FROM `gyarto` 
LEFT JOIN `termek` ON `termek`.`gyarto` = `gyarto`.`adoszam`
WHERE termek.gyarto IS NULL;

//1.3
INSERT INTO alkatresz VALUES (25864, "Intel Core I5", 80000);
INSERT INTO komponens VALUES (4521, 25864);

//2.1
INSERT INTO tanfolyam VALUES (002, 110000, "informatika", "a");
INSERT INTO tanfolyam VALUES (003, 115000, "gazdaság", "b");
INSERT INTO tanfolyam VALUES (004, 50000, "földmérő", "c");
INSERT INTO tanfolyam VALUES (005, 120000, "informatika", "d");
INSERT INTO tanfolyam VALUES (006, 130000, "informatika", "d");
INSERT INTO tanfolyam VALUES (007, 70000, "földmérő", "c");
INSERT INTO tanfolyam VALUES (008, 118000, "gazdaság", "b");

SELECT tanfolyam.tipus, AVG(tanfolyam.ar)
FROM tanfolyam
GROUP BY tanfolyam.tipus;

//2.2
SELECT tanfolyam.tipus, tanfolyam.ar,
CASE
	WHEN tanfolyam.ar > 100000 Then "draga"
    ELSE "olcso"
END
FROM tanfolyam;

//2.3

//3.1
CREATE TABLE gyartotermek_kapcsolo(
	gyarto_id INT,
	FOREIGN KEY (gyarto_id) REFERENCES gyarto.adoszam,
	termek_id INT,
	FOREIGN KEY (termek_id) REFERENCES termek.tkod
);

SELECT gyarto.*, termek.*
FROM gyarto
JOIN gyartotermek_kapcsolo ON gyarto.adoszam = termek.tkod
JOIN termek ON gyartotermek_kapcsolo.termek_id = termek.tkod

//4.1
ALTER TABLE termek ADD (kategoria CHAR(40));
