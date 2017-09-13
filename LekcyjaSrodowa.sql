#SELECT orders.OrderID, customers.ContactName, orders.OrderDate
#FROM orders INNER JOIN customers
#ON orders.CustomerID = customers.CustomerID;

SELECT customers.ContactName, orders.OrderID FROM customers
RIGHT JOIN orders ON customers.CustomerID=orders.CustomerID 
ORDER BY customers.ContactName;

SELECT customers.ContactName, orders.OrderID FROM orders
RIGHT JOIN customers ON customers.CustomerID=orders.CustomerID 
ORDER BY customers.ContactName;

SELECT customers.ContactName, orders.OrderID FROM customers
RIGHT JOIN orders ON customers.CustomerID=orders.CustomerID 
ORDER BY customers.ContactName;

SELECT customers.ContactName, orders.OrderID FROM customers
FULL JOIN orders ON customers.CustomerID=orders.CustomerID 
ORDER BY customers.ContactName;