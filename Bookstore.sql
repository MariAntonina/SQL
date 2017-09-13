DROP DATABASE IF EXISTS Bookstore;

CREATE DATABASE Bookstore;
USE Bookstore;

CREATE TABLE Book 
(`ID_book` INT  NOT NULL AUTO_INCREMENT,
`Author_Name` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Author_Surname` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Title` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Price` float NOT NULL,
PRIMARY KEY(`ID_book`))
DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

CREATE TABLE Orders
(`ID_order` INT  NOT NULL AUTO_INCREMENT,
`Id_Customer` INT NOT NULL,
`Id_Book` INT NOT NULL,
`Order_Date` DATE NOT NULL,
`Status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
PRIMARY KEY(`ID_order`))
DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

CREATE TABLE Customers
(`ID_Customer` INT  NOT NULL AUTO_INCREMENT,
`Customer_Name` TEXT NOT NULL,
`Customer_Surame` TEXT NOT NULL,
`Town` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
PRIMARY KEY(`ID_Customer`))
DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

#insert


#SELECT * FROM Book;
/*
ALTER TABLE Book ADD COLUMN ISBN text NOT NULL;
SELECT * FROM Book;
ALTER TABLE Book DROP COLUMN ISBN;

SELECT * FROM Book;

*/
INSERT INTO Book(Author_Name, Author_Surname, Title, Price)VALUES 
("Jan", "Miachalak", "Zaawansowane programowanie w PHP", 47.29),
("Andrzej", "Krawczyk", "Windows 10 PL. Zaawansowana administracja systemem", 49.99),
("Paweł", "Jakubowski", "HTML 5. Tworzenie witryn", 53.65),
("Tomasz", "Kowalski", "Urządzenia techniki komputerowej", 34.15),
("Łukasz", "Pasternak", "Java: Tworzenie nowoczesnych stron WWW", 29.99);

INSERT INTO Customers(Customer_Name, Customer_Surame,Town) VALUES
("Łukasz", "Lewandowski", "Poznań"),
("Jan", "Nowak", "Katowice"),
("Maciej", "Wójcik", "Bydgoszcz"),
("Agnieszka", "Jankowska", "Lublin"),
("Tomasz", "Mazur", "Jelenia Góra"),
("Michał", "Zieliński", "Kraków"),
("Artur", "Rutkowski", "Kielce"),
("Mateusz", "Skorupa", "Gdańsk"),
("Jerzy", "Rutkowski", "Włóżmitu"),
("Anna", "Karenna", "Tumidaj");

INSERT INTO Orders(Id_Customer, Id_Book, Order_Date, Status) VALUES
(2, 4, "2017-10-08", "Oczekiwanie"),
(7, 1, "2017-09-05", "Wyslano"),
(9, 1, "2017-10-11", "Wyslano"),
(2, 2, "2017-10-15", "Oczekiwanie"),
(2, 5, "2017-08-12", "Oczekiwanie"),
(3, 2, "2017-10-20", "Wyslano"),
(4, 3, "2017-08-14", "Wyslano"),
(8, 1, "2017-08-19", "Wyslano"),
(3, 1, "2017-11-19", "Wyslano"),
(9, 2, "2017-12-28", "Oczekiwane");

#SELECT * FROM Book;

#SELECT * FROM Book ORDER BY Title;
#SELECT Title FROM Book WHERE MAX(Price);
#SELECT * FROM Orders WHERE Status = "Wyslano";
#SELECT * FROM Customers WHERE Customer_Surname = "Rutkowski";
#SELECT * FROM Book WHERE Title LIKE '%PHP%';
#SELECT * FROM Orders ORDER BY Order_Date ASC;
#SELECT * FROM Book;

#SELECT * FROM Orders;


#2
/*SELECT c.Customer_Name, c.Customer_Surame
FROM Customers AS c, Orders As o
WHERE o.ID_Book = 2 AND o.ID_Customer = c.ID_Customer;*/

#3
/*SELECT b.Author_Name, b.Author_Surname, b.Title FROM Book AS b,
Orders AS o, Customers As c
WHERE c.Customer_Name = "Jan"
AND c.Customer_Surame = "Nowak"
AND c.ID_Customer= o.ID_Customer
AND o.ID_book = b.ID_book;*/

#4

#SELECT c.Customer_Name, c.Customer_Surame, o.ID_order, o.Order_Date,
#o.Status, b.Title
#FROM
#Customers AS c, Orders AS o, Book AS b
#WHERE
#c.Customer_Surame = "Rutkowski" AND
#c.ID_Customer = o.ID_Customer AND
#o.ID_Book = b.ID_book;


######## LEKCYJA WTORKOWA 
#SELECT * FROM Book WHERE ID_Book = 4;

#USE Bookstore;

#UUPDATE Customers SET Customer_Surame = "Psikuta" WHERE ID_Customer = 4;
#SELECT * FROM Customers WHERE ID_Customer = 4;

#Zmieniamy id klienta osoby nr 3 na wartosc 1;
#UPDATE Customers SET ID_Customer = 190 WHERE ID_Customer = 3;

#Zwiekszamy cene wszystkich ksiazek o 10%;
UPDATE Book SET Price =  ROUND(Price*1.1,2);

#UPDATE Book SET Price = Price - 10 WHERE Price = Max(Price);

SELECT * FROM Book ORDER BY Price DESC LIMIT 1; 
UPDATE Book SET Price = Price - 10 ORDER BY Price DESC LIMIT 1;

SELECT * FROM Book WHERE Price = (SELECT MAX(Price) from Book);

UPDATE Customers SET Customer_Name = "Joanna", Customer_Surame = "Dostojewska"
WHERE ID_Customer = 10;

UPDATE Orders SET Status = "Wyslano"  WHERE Id_Customer = 4 OR Id_Customer = 5;
SELECT * FROM Customers;
SELECT * FROM Book;

INSERT INTO Customers ( Customer_Name, Customer_Surame, Town )VALUES( "Franciszek", "Jakowski", "Chorzow");
INSERT INTO Orders ( Id_Customer, Id_Book, Order_Date, Status ) VALUES ( 7,  3, '2017-09-11', "Zamowiono");
INSERT INTO Book(Author_Name, Author_Surname, Title) VALUES(" ", "Grębosz", "Symfonia C++");

