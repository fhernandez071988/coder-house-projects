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

CREATE TABLE Portfolio_Products(
    PortfolioID tinyint(50),
    ProductID tinyint(50),
    FOREIGN KEY (PortfolioID) REFERENCES Portfolio(PortfolioID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

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