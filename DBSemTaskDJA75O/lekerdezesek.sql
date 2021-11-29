//1. Melyik pályán van a legtöbb kör?
SELECT palyak.nev, palyak.kor
FROM palyak
WHERE palyak.kor = (SELECT MAX(palyak.kor) FROM palyak);

//2. Ki nyert az adott pályákon és milyen gumi keverékekkel?
SELECT versenyzok.nev, palyak.nev, palyak.gumi_keverekek_egy, palyak.gumi_keverekek_ketto, palyak.gumi_keverekek_harom
FROM palyak
LEFT JOIN versenyzok ON palyak.gyoztes_ID = versenyzok.rajtszam;

//3. Melyik csapat milyen motort használ?
SELECT csapatok.nev, motor_gyartok.gyarto
FROM csapatok
LEFT JOIN motor_gyartok ON csapatok.motor_ID = motor_gyartok.ID;

//4. Adott csapatnak melyik országban van a székhelyük?
SELECT csapatok.nev, csapatok.orszag
FROM csapatok;

//5. Melyik motor gyártó motorlyát használják a legtöbben?
SELECT motor_gyartok.gyarto, COUNT(motor_gyartok.gyarto) AS db
FROM motor_gyartok
LEFT JOIN csapatok ON csapatok.motor_ID = motor_gyartok.ID
GROUP BY csapatok.motor_ID
ORDER By db DESC LIMIT 1;

//6. Melyik versenyző nyert a legtöbbet
SELECT versenyzok.nev, COUNT(palyak.gyoztes_ID) AS db
FROM versenyzok
INNER JOIN palyak ON versenyzok.rajtszam = palyak.gyoztes_ID
GROUP BY versenyzok.nev
ORDER By db DESC LIMIT 1;

//7. Melyik világbajnok nyert a legtöbször egy csapattal
SELECT világbajnokok.csapat, világbajnokok.nev, COUNT(világbajnokok.nev) AS db
FROM világbajnokok
GROUP BY világbajnokok.csapat;


//8. Melyik versenyzok melyik csapatnál melyik motor gyártó motorjával versenyzik
SELECT versenyzok.nev, csapatok.konstruktor, motor_gyartok.gyarto
FROM versenyzok
LEFT JOIN k_versenyzok_csapatok ON versenyzok.rajtszam = k_versenyzok_csapatok.versenyzok_ID
LEFT JOIN csapatok ON k_versenyzok_csapatok.csapat_ID = csapatok.ID
LEFT JOIN motor_gyartok ON motor_gyartok.ID = csapatok.motor_ID;

//9. Adott országokban hány versenyt rendeznek
SELECT palyak.orszag, COUNT(palyak.orszag) AS db
FROM palyak
GROUP By palyak.orszag;

//10. Hányszor használták az 1 rajtszámot
SELECT COUNT(világbajnokok.rajtszam)
FROM világbajnokok
WHERE világbajnokok.rajtszam = 1;

