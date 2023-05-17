CREATE DATABASE Coder_Project;

USE  Coder_Project;
CREATE TABLE Clients(
ClientID tinyint(10),
Name varchar(50),
Last_Name varchar(50),
GovID TINYINT(10) NOT NULL,
Dob date,
Country_of_Domicile varchar(50),
Email varchar(50),
Risk_Profile varchar(50),
balance int NOT NULL,
PRIMARY KEY (ClientID)
);

describe clients;

ALTER TABLE Clients
modify balance double not null

CREATE TABLE Portfolio(
PortfolioID tinyint(50) PRIMARY KEY,
ClientID tinyint(10),
ProductID tinyint(50),
Portfolio_Type varchar(50),
Current_Value double not null,
Quantity varchar(50)
);

describe portfolio;

CREATE TABLE Products(
ProductID tinyint(50) PRIMARY KEY,
PortfolioID tinyint(10),
Risk_Level tinyint(50),
Product_Type varchar(50),
Comission double not null,
Expected_Return int
);

describe portfolio

ALTER TABLE Portfolio
ADD FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
ADD FOREIGN KEY (ProductID) REFERENCES Products(ProductID);

describe portfolio

ALTER TABLE Products
ADD FOREIGN KEY (PortfolioID) REFERENCES Portfolio(PortfolioID);

CREATE TABLE Investment_Order(
OrderID tinyint(50) PRIMARY KEY,
PortfolioID tinyint(10),
ClientID tinyint(10),
OrderDate date,
Order_Status varchar (50),
Order_Amount double,
FOREIGN KEY (PortfolioID) REFERENCES Portfolio(PortfolioID),
FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

describe Investment_Order;

CREATE TABLE Historic(
HistoricID tinyint(50) PRIMARY KEY,
ClientID tinyint(10),
Benefit int,
InitialAmount int,
Initial int,
FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

describe historic;

USE coder_project;
show tables;
describe clients;

alter table clients
modify ClientID tinyint not null;

describe clients;

describe products;

describe portfolio;
ALTER TABLE portfolio
DROP FOREIGN KEY `portfolio_ibfk_2`;
describe portfolio;
drop table portfolio
ALTER TABLE portfolio
DROP FOREIGN KEY `portfolio_ibfk_1`;
ALTER TABLE products
DROP FOREIGN KEY `products_ibfk_1`
ALTER TABLE investment_order
DROP FOREIGN KEY `investment_order_ibfk_1`
drop table portfolio;
drop table products;
show tables;

CREATE TABLE Portfolio(
    PortfolioID tinyint(50) PRIMARY KEY,
    ClientID tinyint(10),
    Portfolio_Type varchar(50),
    Current_Value double not null,
    Quantity varchar(50)
);

CREATE TABLE Products(
    ProductID tinyint(50) PRIMARY KEY,
    Risk_Level tinyint(50),
    Product_Type varchar(50),
    Comission double not null,
    Expected_Return int
);

describe products;

CREATE TABLE Portfolio_Products(
    PortfolioID tinyint(50),
    ProductID tinyint(50),
    FOREIGN KEY (PortfolioID) REFERENCES Portfolio(PortfolioID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

DESCRIBE Portfolio_Products;

show tables;

describe client;

alter table clients
modify GovID varchar(50);
describe clients;

INSERT INTO clients (ClientID, Name, Last_Name, GovID, Dob, Country_of_Domicile, Email, Risk_Profile, balance) 
VALUES
(1, 'Isabel', 'Iglesias', '159357258', '1992-11-07', 'Mexico', 'isabel.iglesias@example.com', 'Low', 11000),
(2, 'Jorge', 'Jimenez', '753951456', '1987-12-18', 'Argentina', 'jorge.jimenez@example.com', 'Medium', 12000),
(3, 'Karla', 'Klein', '456159753', '1972-01-29', 'Brazil', 'karla.klein@example.com', 'High', 13000),
(4, 'Luis', 'Lopez', '951753456', '1997-02-08', 'Chile','luis.lopez@example.com','Low' ,14000),
(5,'Maria','Martinez','357159258','1982-03-20','Colombia','maria.martinez@example.com','Medium' ,15000),
(6,'Natalia','Nunez','951357456','1977-04-01','Peru','natalia.nunez@example.com','High' ,16000),
(7,'Oscar','Ortiz','159753258','1996-05-13','Venezuela','oscar.ortiz@example.com','Low' ,17000),
(8,'Pedro','Perez','753159456','1981-06-24','Ecuador','pedro.perez@example.com','Medium' ,18000),
(9,'Quinn','Quintana','456753159','1976-07-06','Bolivia','quinn.quintana@example.com','High' ,19000),
(10,'Rosa','Ramirez','357456159','1995-08-17','Paraguay','rosa.ramirez@example.com','Low' ,20000);

select * from clients;

describe portfolio;

alter table portfolio
modify PortfolioID tinyint(10);

describe clients;

alter table portfolio
modify PortfolioID varchar(10);

alter table Portfolio_Products
modify PortfolioID varchar(10),
modify ProductID varchar(10);

drop table Portfolio_Products;

alter table portfolio
modify PortfolioID varchar(10);

alter table products
modify ProductID varchar(10);

describe products

CREATE TABLE Portfolio_Products(
PortfolioID varchar(10),
ProductID varchar(10),
FOREIGN KEY (PortfolioID) REFERENCES Portfolio(PortfolioID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID));

INSERT INTO portfolio (PortfolioID, ClientID, Portfolio_Type, Current_Value, Quantity) 
VALUES
(1234567890, 1, 'Stocks', 10000.00, '100'),
(2345678901, 1, 'Bonds', 20000.00, '200'),
(3456789012, 2, 'Mutual Funds', 30000.00, '300'),
(4567890123, 2, 'ETFs', 40000.00, '400'),
(5678901234, 3, 'Real Estate', 50000.00, '500'),
(6789012345, 3, 'Stocks', 60000.00, '600'),
(7890123456, 4, 'Bonds', 70000.00,'700'),
(8901234567, 4,'Mutual Funds',80000.00,'800'),
(9012345678,5,'ETFs',90000.00,'900'),
(1234567809,5,'Real Estate',100000.00,'1000');

describe products

INSERT INTO products (ProductID, ClientID, Portfolio_Type, Current_Value, Quantity)
VALUES
('P1', 1, 'Stocks', 1, 0.05),
('P2', 2, 'Bonds', 2, 0.04),
('P3', 3, 'Mutual Funds', 2, 0.07),
('P4', 1, 'ETFs', 3, 0.06),
('P5', 2, 'Real Estate', 1, 0.08);

describe portfolio_products;

INSERT INTO portfolio_products (PortfolioID, ProductID) 
VALUES
('1234567890', 'P1'),
('2345678901', 'P2'),
('3456789012', 'P3'),
('4567890123', 'P4'),
('5678901234', 'P5');

describe investment_order

ALTER TABLE investment_order
ADD ProductID VARCHAR(10),
ADD Price DOUBLE,
ADD Quantity INT,
ADD Fees DOUBLE;

describe investment_order;

ALTER TABLE investment_order
ADD FOREIGN KEY (ClientID) REFERENCES clients (ClientID);

select PortfolioID from portfolio;

DESCRIBE portfolio PortfolioID;

alter table investment_order
modify PortfolioID varchar(10);

INSERT INTO investment_order (OrderID, PortfolioID, ClientID, OrderDate, Order_Status, Order_Amount, ProductID, Price, Quantity, Fees) 
VALUES
(1, 1234567890, 1, '2022-01-01', 'Completed', 1000.00, 'P1', 10.00, 100, 10.00),
(2, 2345678901, 1, '2022-02-01', 'Completed', 2000.00, 'P2', 20.00, 100, 20.00),
(3, 3456789012, 2, '2022-03-01', 'Completed', 3000.00,'P3',30.00 ,100 ,30.00),
(4,4567890123 ,2 ,'2022-04-01' ,'Completed' ,4000.00 ,'P4' ,40.00 ,100 ,40.00),
(5 ,5678901234 ,3 ,'2022-05-01' ,'Completed' ,5000.00 ,'P5' ,50.00 ,100 ,50.00),
(6 ,6789012345 ,3 ,'2022-06-01' ,'Pending' ,6000.00 ,'P1' ,60.00 ,100 ,60.00),
(7 ,7890123456 ,4 ,'2022-07-01' ,'Pending' ,7000.00 ,'P2' ,70.00 ,100 ,70.00),
(8 ,8901234567 ,4 ,'2022-08-01' ,'Pending' ,8000.00 ,'P3' ,80.00 ,100 ,80.00),
(9 ,9012345678 ,5 ,'2022-09-01' ,'Pending' ,9000.00 ,'P4' ,90.00 ,100 ,90.00),
(10 ,1234567809 ,5 ,'2022-10-01' ,'Pending' ,10000.00 ,'P5' ,100.00 ,100 ,100.00);

SHOW CREATE TABLE investment_order;

describe clients;

describe portfolio;

select * from portfolio;

describe products;
select * from products;


DROP TABLE Portfolio_Products;

DROP TABLE Products;

CREATE TABLE Products(
    ProductID varchar(10) PRIMARY KEY,
    Risk_Level tinyint(50),
    Product_Type varchar(50),
    Comission double not null,
    Expected_Return int
);

INSERT INTO products (ProductID, Risk_Level, Product_Type, Comission, Expected_Return)
VALUES
('P1', 1, 'Stocks', 1, 0.05),
('P2', 2, 'Bonds', 2, 0.04),
('P3', 3, 'Mutual Funds', 2, 0.07),
('P4', 1, 'ETFs', 3, 0.06),
('P5', 2, 'Real Estate', 1, 0.08);

CREATE TABLE Portfolio_Products(
PortfolioID varchar(10),
ProductID varchar(10),
FOREIGN KEY (PortfolioID) REFERENCES Portfolio(PortfolioID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID));

INSERT INTO portfolio_products (PortfolioID, ProductID) 
VALUES
('1234567890', 'P1'),
('2345678901', 'P2'),
('3456789012', 'P3'),
('4567890123', 'P4'),
('5678901234', 'P5');

SELECT * FROM clients;
SELECT * FROM investment_order;
SELECT * FROM portfolio;
SELECT * FROM portfolio_products;
SELECT * FROM products;

describe historic;
alter table historic
modify HistoricID varchar(20);

INSERT INTO historic (HistoricID, ClientID, Benefit, InitialAmount, Initial)
VALUES 
(12023, 1, 1000, 5000, 10000),
(22024, 2, 2000, 6000, 11000),
(32025, 3, 3000, 7000, 12000),
(42026, 4, 4000, 8000, 13000),
(52027, 5, 5000, 9000, 14000),
(62028, 6, 6000, 10000, 15000),
(72029, 7, 7000, 11000, 16000);

select * from clients;
select * from historic;
select * from investment_order;
select * from portfolio;
select * from portfolio_products;
select * from products;

CREATE VIEW client_risk_information (ClientID, Name, Last_Name, Risk_Profile)
AS select ClientID, Name, Last_Name, Risk_Profile from clients;

CREATE VIEW client_basic_information (ClientID, Name, Last_Name, GovID,Dob,Country_of_Domicile, Email)
AS select ClientID, Name, Last_Name, GovID, Dob, Country_of_Domicile, Email
from clients;

CREATE VIEW client_portfolio_products 
AS select Clients.Name, Portfolio.PortfolioID, Portfolio.Portfolio_Type, Products.Product_Type
from Clients
join Portfolio ON Clients.ClientID = Portfolio.ClientID
join Portfolio_Products ON Portfolio.PortfolioID = Portfolio_Products.PortfolioID
join Products ON Portfolio_Products.ProductID = Products.ProductID;

CREATE VIEW order_deteails_view (OrderID, ClientID, OrderDate, Order_Status, Order_Amount)
AS select OrderID, ClientID, OrderDate, Order_Status, Order_Amount
from investment_order;

CREATE VIEW portfolio_summary(ClientID, Portfolio_Type, Current_Value)
AS select ClientID, Portfolio_Type, Current_Value
from portfolio;

USE  Coder_Project;
SELECT * FROM clients;
SELECT * FROM investment_order;
SELECT * FROM portfolio;
SELECT * FROM portfolio_products;
SELECT * FROM products;
SELECT * FROM historic;

DELIMITER //
CREATE FUNCTION total_orders_by_date_range(start_date DATE, end_date DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SET total = (SELECT SUM(Order_Amount) FROM Orders WHERE OrderDate BETWEEN start_date AND end_date);
    RETURN total;
END //
DELIMITER ;

DROP FUNCTION total_orders_by_date_range;

DELIMITER //
CREATE FUNCTION total_orders_by_date_range(start_date DATE, end_date DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SET total = (SELECT SUM(Order_Amount) FROM investment_order WHERE OrderDate BETWEEN start_date AND end_date);
    RETURN total;
END //
DELIMITER ;

SELECT total_orders_by_date_range('2022-01-01', '2022-05-01');

DELIMITER //
CREATE FUNCTION average_order_amount_by_product_type(product_type VARCHAR(255))
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE avg_amount FLOAT;
    SET avg_amount = (SELECT AVG(Order_Amount) FROM investment_order INNER JOIN Products ON investment_order.ProductID = Products.ProductID WHERE Products.Product_Type = product_type);
    RETURN avg_amount;
END //
DELIMITER ;

SELECT average_order_amount_by_product_type('Stocks') AS product_type_average;

USE  Coder_Project;

DELIMITER //
CREATE PROCEDURE sort_clients(IN order_by VARCHAR(255), IN sort_order VARCHAR(4))
BEGIN
    SET @sort_query = CONCAT('SELECT * FROM clients ORDER BY ', order_by, ' ', sort_order);
    PREPARE clients_prepared_statement FROM @sort_query;
    EXECUTE clients_prepared_statement;
    DEALLOCATE PREPARE clients_prepared_statement;
END //
DELIMITER ;

CALL sort_clients('Name', 'ASC');

DELIMITER //
CREATE PROCEDURE insert_or_delete_client(IN operation VARCHAR(10), IN client_name VARCHAR(255), IN last_name VARCHAR(255), IN dob DATE)
BEGIN
    IF operation = 'insert' THEN
        INSERT INTO clients (Name, Last_Name, Dob) VALUES (client_name, last_name, dob);
    ELSEIF operation = 'delete' THEN
        DELETE FROM clients WHERE Name = client_name AND Last_Name = last_name AND Dob = dob;
    END IF;
END //
DELIMITER ;

CALL insert_or_delete_client('insert', 'Juan', 'Perez', '1990-01-01');

CALL insert_or_delete_client('delete', 'Juan', 'Perez', '1990-01-01');

USE  Coder_Project;

-- Tabla de LOG para registrar operaciones previas
CREATE TABLE investment_order_log_before (
  LogID INT PRIMARY KEY,
  OrderID INT,
  Operation VARCHAR(50),
  User VARCHAR(50),
  Date DATE,
  Time TIME
);

-- Tabla de LOG para registrar operaciones posteriores
CREATE TABLE investment_order_log_after (
  LogID INT PRIMARY KEY,
  OrderID INT,
  Operation VARCHAR(50),
  User VARCHAR(50),
  Date DATE,
  Time TIME
);


DELIMITER $$

-- Trigger para controlar acción previa a una operación en "investment_order"
CREATE TRIGGER investment_order_before_trigger
BEFORE INSERT ON investment_order
FOR EACH ROW
BEGIN
  -- Registro de la operación previa en el LOG
  INSERT INTO investment_order_log_before (OrderID, Operation, User, Date, Time)
  VALUES (NEW.OrderID, 'INSERT', USER(), CURDATE(), CURTIME());
END $$

DELIMITER $$

-- Trigger para controlar acción posterior a una operación en "investment_order"
CREATE TRIGGER investment_order_after_trigger
AFTER UPDATE ON investment_order
FOR EACH ROW
BEGIN
  -- Registro de la operación posterior en el LOG
  INSERT INTO investment_order_log_after (OrderID, Operation, User, Date, Time)
  VALUES (NEW.OrderID, 'UPDATE', USER(), CURDATE(), CURTIME());
END $$

describe investment_order;




SELECT * FROM investment_order_log_before;

ALTER TABLE investment_order_log_before
MODIFY COLUMN LogID INT AUTO_INCREMENT;

ALTER TABLE investment_order_log_after
MODIFY COLUMN LogID INT AUTO_INCREMENT;

INSERT INTO investment_order (OrderID, PortfolioID, ClientID, OrderDate, Order_Status, Order_Amount, ProductID, Price, Quantity, Fees)
VALUES (11, 'Portfolio1', 1, '2023-05-10', 'Pending', 100.00, 'Product1', 10.00, 5, 2.00);

SELECT * FROM investment_order_log_before;


UPDATE investment_order
SET Order_Status = 'Completed'
WHERE OrderID = 1;


SELECT * FROM investment_order_log_after;



describe clients;

use mysql;
show tables;
select * from user;
CREATE USER usertest1@localhost IDENTIFIED BY 'Test12345.';
select * from user;
SHOW GRANTS FOR usertest1@localhost;
GRANT SELECT ON coder_project.clients TO 'usertest1'@'localhost';
GRANT SELECT ON coder_project.products TO 'usertest1'@'localhost';

CREATE USER usertest2@localhost IDENTIFIED BY 'Test6789.';
GRANT SELECT, UPDATE, INSERT ON coder_project.clients TO 'usertest2'@'localhost';