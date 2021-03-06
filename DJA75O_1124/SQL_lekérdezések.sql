//1
SELECT oktato.nev
FROM oktato;

//2
SELECT `oktato`.`nev`, `targy`.`megnevezes`
FROM `oktato` 
LEFT JOIN `oktat` ON `oktat`.`oktato_neptunkod` = `oktato`.`neptunkod` 
LEFT JOIN `targy` ON `oktat`.`targy_kod` = `targy`.`kod`
WHERE `targy`.`megnevezes` != "NULL";

//3
SELECT `oktato`.`nev`, `targy`.`megnevezes`
FROM `oktato` 
LEFT JOIN `oktat` ON `oktat`.`oktato_neptunkod` = `oktato`.`neptunkod` 
LEFT JOIN `targy` ON `oktat`.`targy_kod` = `targy`.`kod`;

//4
SELECT `oktato`.`nev`, `targy`.`megnevezes`, `oktato`.`tanszek`
FROM `oktato` 
LEFT JOIN `oktat` ON `oktat`.`oktato_neptunkod` = `oktato`.`neptunkod` 
LEFT JOIN `targy` ON `oktat`.`targy_kod` = `targy`.`kod`
WHERE `oktato`.`tanszek` = "AIF";

//5
SELECT AVG(targy.kredit)
FROM targy;

//6
SELECT COUNT(`oktato`.`tanszek`)
FROM `oktato` 
LEFT JOIN `oktat` ON `oktat`.`oktato_neptunkod` = `oktato`.`neptunkod` 
LEFT JOIN `targy` ON `oktat`.`targy_kod` = `targy`.`kod`
WHERE `oktato`.`tanszek` = "AIF";

//7
SELECT targy.megnevezes, targy.kredit
FROM targy
WHERE targy.kredit = 5;

//8
SELECT `oktato`.`nev`, `targy`.`megnevezes`
FROM `oktato` 
LEFT JOIN `oktat` ON `oktat`.`oktato_neptunkod` = `oktato`.`neptunkod` 
LEFT JOIN `targy` ON `oktat`.`targy_kod` = `targy`.`kod`
WHERE `targy`.`megnevezes` IS NULL;

//9
SELECT `halgato`.`nev`, `halgat`.`targy_kod`
FROM `halgato` 
LEFT JOIN `halgat` ON `halgat`.`halgato_neptunkod` = `halgato`.`neptunkod`
WHERE `halgat`.`targy_kod` IS NULL;

//10
SELECT halgato.nev, halgato.szuld
FROM halgato;

//11
SELECT oktato.tanszek, COUNT(oktato.nev)
FROM oktato
GROUP BY oktato.tanszek;

//12
SELECT targy.megnevezes, COUNT(halgat.halgato_neptunkod)
FROM targy 
LEFT JOIN halgat ON halgat.targy_kod = targy.kod
GROUP BY targy.megnevezes;

//13
SELECT `oktato`.`nev`, COUNT(`oktat`.`targy_kod`) AS db
FROM `oktato` 
LEFT JOIN `oktat` ON `oktat`.`oktato_neptunkod` = `oktato`.`neptunkod`
GROUP BY `oktato`.`nev`
HAVING db > 2;

//14