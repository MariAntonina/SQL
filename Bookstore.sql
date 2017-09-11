/*DROP DATABASE IF EXISTS Bookstore;

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
DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;*/

#insert
/*
INSERT INTO Book(Author_Name, Author_Surname, Title, Price)VALUES 
("Jan", "Miachalak", "Zaawansowane programowanie w PHP", 47.29),
('Andrzej', 'Krawczyk', 'Windows 10 PL. Zaawansowana administracja systemem', 49.99);

SELECT * FROM Book;

ALTER TABLE Book ADD COLUMN ISBN text NOT NULL;
SELECT * FROM Book;
ALTER TABLE Book DROP COLUMN ISBN;

SELECT * FROM Book;


INSERT INTO Book(Author_Name, Author_Surname, Title, Price)VALUES 
("Jan", "Miachalak", "Zaawansowane programowanie w PHP", 47.29),
('Andrzej', 'Krawczyk', 'Windows 10 PL. Zaawansowana administracja systemem', 49.99),
("Pawel", "Jakubowski", "HTML5. Tworzenie witryn", 53.65),
("Tomasz", "Kowalski", "Urzadzenia techniki komputerowej", 34.15),
("Lukasz", "Pasternak", "Java: Tworzenie nowoczesnych stron WWW", 29.99);

INSERT INTO Customers(Customer_Name, Customer_Surame,Town) VALUES
("Lukasz", "Lewandowski", "Poznan"),
("Jan","Nowak", "Katowice"),
("Maciej" , "Wójcik", "Bydgoszcz");

INSERT INTO Orders(Id_Customer, Id_Book, Order_Date, Status) VALUES
(2,4, "2017-10-08" , "Oczekiwanie"),
(7,1, "2017-09-05" , "Wyslano");*/


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
SELECT c.Customer_Name, c.Customer_Surame, o.ID_order, o.Order_Date,
o.Status, b.Title
FROM
Customers AS c, Orders AS o, Book AS b
WHERE
c.Customer_Surame = "Rutkowski" AND
c.ID_Customer = o.ID_Customer AND
o.ID_Book = b.ID_book;






