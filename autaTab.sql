DROP TABLE IF EXISTS Activity;
CREATE TABLE Activity
(
`IDactivity`
int NOT NULL AUTO_INCREMENT,
`Message` TEXT
CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Query` TEXT
CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
PRIMARY KEY(`Idactivity`))
DEFAULT CHARSET= utf8 COLLATE = utf8_bin AUTO_INCREMENT = 1;

DROP TRIGGER if exists wypozyczSamochod;

delimiter |
CREATE TRIGGER wypozyczSamochod
	AFTER INSERT ON wypozyczenia
	FOR EACH ROW
	BEGIN
	INSERT  INTO Activity
	SET Message = 
    (SELECT(CONCAT("Wyposażono auto:",
    marka, model)) 
    from auta where idAuta = NEW.idAuta);
END
|

INSERT INTO wypozyczenia
SET idklienta = 1,
idauta = 1,
datawyp = "2017-09-14",
datazwrotu = "2017-10-29", 
naleznosc = 111;

|

CREATE TRIGGER dodanyNowySamochod
	AFTER INSERT ON auta
	FOR EACH ROW
	BEGIN
	INSERT  INTO Activity
	SET Message = 
    (SELECT(CONCAT("Zakup auta:",
    new.marka, new.model, new.przebieg, new.rocznik)));
END
|

INSERT INTO auta
SET marka = "VW",
model = "Passat",
przebieg = 277487,
rocznik = 2015,
ubezpieczenie = 1;

|
SELECT * FROM samochody.Activity;