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
