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

CREATE TABLE Historic(
HistoricID tinyint(50) PRIMARY KEY,
ClientID tinyint(10),
Benefit int,
InitialAmount int,
Initial int,
FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);
