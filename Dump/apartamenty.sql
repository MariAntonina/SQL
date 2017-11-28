DROP DATABASE IF EXISTS apartamenty;
CREATE DATABASE apartamenty;

USE apartamenty;

/* *************************************************************** 
***************************CREATING TABLES************************
**************************************************************** */

CREATE TABLE apartament (
	apartment_id INT (3) UNSIGNED NOT NULL AUTO_INCREMENT,
	apartament_strefa INT(4) NOT NULL,
    pokoj INT (5) NOT NULL,
	pietro int(2) NOT NULL,
	czynsz_id int(4) NOT NULL,
	PRIMARY KEY (apartment_id)
	);

CREATE TABLE klient (
	klient_id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
	klient_imie VARCHAR(25),
	klient_nazwisko VARCHAR(25) NOT NULL,
    pesel VARCHAR(11) NOT NULL,
	klient_email VARCHAR(50) NOT NULL,
	klient_telefon VARCHAR(15) NOT NULL,
	nr_dowodu VARCHAR(25) NOT NULL,
	nr_paszportu VARCHAR(25) NOT NULL,
	PRIMARY KEY (klient_id)
    );

CREATE TABLE czynsz (
	czynsz_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	apartament_id INT(3) NOT NULL,
	czynsz_strefa DECIMAL(8, 0) NOT NULL,
	czynsz_od DATE NOT NULL,
    czynsz_do DATE NOT NULL,
    czynsz_suma DECIMAL(8, 0) NOT NULL,
	PRIMARY KEY (czynsz_id)
	);

CREATE TABLE gaz (
	gaz_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	apartament_id INT(3) NOT NULL,
	gaz_taryfa DECIMAL(8, 0) NOT NULL,
	gaz_od DATE NOT NULL,
    gaz_do DATE NOT NULL,
    gaz_suma DECIMAL(8, 0) NOT NULL,
	PRIMARY KEY (gaz_id)
	);
    
CREATE TABLE prad (
	prad_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	apartament_id INT(2) NOT NULL,
	prad_taryfa DECIMAL(8, 0) NOT NULL,
	prad_od DATE NOT NULL,
    prad_do DATE NOT NULL,
    prad_suma DECIMAL(8, 0) NOT NULL,
	PRIMARY KEY (prad_id)
	);

CREATE TABLE internet (
	internet_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	apartament_id INT(3) NOT NULL,
	internet_taryfa DECIMAL(8, 0) NOT NULL,
	internet_od DATE NOT NULL,
    internet_do DATE NOT NULL,
    internet_suma DECIMAL(8, 0) UNSIGNED NOT NULL,
	PRIMARY KEY (internet_id)
	);

CREATE TABLE sprzatanie (
	sprzatanie_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	apartament_id INT(3) NOT NULL,
	sprzatanie_cena DECIMAL(8, 0) NOT NULL,
	sprzatanie_od DATE NOT NULL,
    sprzatanie_do DATE NOT NULL,
    sprzatanie_suma DECIMAL(8, 0) NOT NULL,
	PRIMARY KEY (sprzatanie_id)
	);
    
CREATE TABLE tv (
	tv_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	apartament_id INT(3) NOT NULL,
	tv_cena_pakiet_podstawowy DECIMAL(8, 0) NOT NULL,
    tv_cena_pakiet_premium DECIMAL(8, 0) NOT NULL,
	tv_od DATE NOT NULL,
    tv_do DATE NOT NULL,
    tv_suma DECIMAL(8, 0) UNSIGNED NOT NULL,
	PRIMARY KEY (tv_id)
	);

CREATE TABLE parking (
	parking_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	apartament_id INT(3) NOT NULL,
	parking_cena_benzyna DECIMAL(8, 0) NOT NULL,
    parking_cena_elektryczny DECIMAL(8, 0) NOT NULL,
	parking_od DATE NOT NULL,
    parking_do DATE NOT NULL,
    parking_suma DECIMAL(8, 0) UNSIGNED NOT NULL,
	PRIMARY KEY (parking_id)
	);
    
CREATE TABLE faktura (
	faktura_id INT (11) UNSIGNED NOT NULL,
	faktura_numer VARCHAR(10) NOT NULL,
	apartament_id INT(3) NOT NULL,
	klient_imie VARCHAR(10) NOT NULL,
	klient_nazwisko INT (11) NOT NULL,
    czynsz_suma DECIMAL(8, 0) NOT NULL,
    gaz_suma DECIMAL(8, 0) NOT NULL,
    prad_suma DECIMAL(8, 0) NOT NULL,
    internet_suma DECIMAL(8, 0),
    tv_suma DECIMAL(8, 0),
    sprzatanie_suma DECIMAL(8, 0),
    faktura_suma DECIMAL(8, 0)  NOT NULL,
    parking_suma DECIMAL(8, 0)  NOT NULL,
    PRIMARY KEY (faktura_id)
	);
    
CREATE TABLE powiadomienie (
	id INT(500) UNSIGNED NOT NULL AUTO_INCREMENT,
	klient_id INT (10) NOT NULL,
	klient_email VARCHAR(50) NOT NULL,
    klient_telefon VARCHAR(15) NOT NULL,
    wyslano VARCHAR(50) NOT NULL,
	PRIMARY KEY (sprzatanie_id)
	);
    
CREATE TABLE oplata (
	id INT(500) UNSIGNED NOT NULL AUTO_INCREMENT,
	klient_id INT (10) NOT NULL,
    faktura_numer DATE NOT NULL,
    oplacone CHAR(3) NOT NULL,
    rodzaj_platnosci CHAR(5) NOT NULL,
	PRIMARY KEY (powiadomienie_id)
	);

CREATE TABLE rezerwacja(
	id INT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
	klient_id INT (10) NOT NULL,
    apartment_id INT (3) UNSIGNED NOT NULL,
    rezerwacja_od DATE NOT NULL,
    rezerwacja_do DATE NOT NULL,
    kaucja DECIMAL(8, 0) NOT NULL,
	PRIMARY KEY (rezerwacja_id)
	);
    
/*Dostepnosc rozpisanie do przemyslenia*/
CREATE TABLE dostepnosc(
	apartament_id INT (10) NOT NULL,
    dostepnosc_od DATE NOT NULL,
    dostepnosc_do DATE NOT NULL
	);