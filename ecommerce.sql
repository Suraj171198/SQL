CREATE TABLE orderdetails (
	DetailID int NOT NULL,
	DetailOrderID int NOT NULL,
	DetailProductID int NOT NULL,
	DetailName varchar(250) NOT NULL,
	DetailPrice float NOT NULL,
	DetailSKU varchar(50) NOT NULL,
	DetailQuantity int NOT NULL,
	PRIMARY KEY (DetailID)
);

CREATE TABLE orders (
	OrderID int NOT NULL,
	OrderUserID int NOT NULL,
	OrderAmount float NOT NULL,
	OrderShipName varchar(100) NOT NULL,
	OrderShipAddress varchar(100) NOT NULL,
	OrderShipAddress2 varchar(100) NOT NULL,
    OrderCity varchar(50) NOT NULL,
    OrderState varchar(50) NOT NULL,
	OrderZip varchar(20) NOT NULL,
	OrderCountry varchar(50) NOT NULL,
	OrderPhone varchar(20) NOT NULL,
	OrderFax varchar(20) NOT NULL,
	OrderShipping float NOT NULL,
	OrderTax float NOT NULL,
	OrderEmail varchar(100) NOT NULL,
	OrderDate datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	OrderShipped tinyint NOT NULL DEFAULT '0',
	OrderTrackingNumber varchar(80) DEFAULT NULL,
	PRIMARY KEY (OrderID)
);

CREATE TABLE productcategories(
  CategoryID int NOT NULL,
  CategoryName varchar(50) NOT NULL,
  PRIMARY KEY (CategoryID)
);


CREATE TABLE products(
  ProductID int NOT NULL,
  ProductSKU varchar NOT NULL,
  ProductName varchar(100) NOT NULL,
  ProductPrice float NOT NULL,
  ProductWeight float NOT NULL,
  ProductCartDesc varchar(250) NOT NULL,
  ProductShortDesc varchar(1000) NOT NULL,
  ProductLongDesc text NOT NULL,
  ProductThumb varchar(100) NOT NULL,
  ProductImage varchar(100) NOT NULL,
  ProductCategoryID int DEFAULT NULL,
  ProductUpdateDate datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  ProductStock float DEFAULT NULL,
  ProductLive tinyint DEFAULT '0',
  ProductUnlimited tinyint DEFAULT '1',
  ProductLocation varchar(250) DEFAULT NULL,
  PRIMARY KEY (ProductID)
);

CREATE TABLE users (
  UserID int NOT NULL,
  UserEmail varchar DEFAULT NULL,
  UserPassword varchar(500) DEFAULT NULL,
  UserFirstName varchar(50) NOT NULL,
  UserLastName varchar(50) NOT NULL,
  UserCity varchar(90) NOT NULL,
  UserState varchar(20) NOT NULL,
  UserZip varchar(12) NOT NULL,
  UserEmailVerified tinyint DEFAULT '0',
  UserRegistrationDate datetime NULL DEFAULT CURRENT_TIMESTAMP,
  UserVerificationCode varchar(20) DEFAULT NULL,
  UserIP varchar(50) DEFAULT NULL,
  UserPhone varchar(20) DEFAULT NULL,
  UserCountry varchar(20) DEFAULT NULL,
  UserAddress varchar(100) DEFAULT NULL,
  UserAddress2 varchar(50) DEFAULT NULL,
  PRIMARY KEY (UserID)
);

CREATE TABLE Seller (
  SellerId VARCHAR(6) NOT NULL,
  SellerPass VARCHAR(10) NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Address VARCHAR(10) NOT NULL,
  PRIMARY KEY (SellerId)
);

CREATE TABLE Seller_Phone_num (
  PhoneNum VARCHAR(10) NOT NULL,
  SellerId VARCHAR(6) NOT NULL,
  PRIMARY KEY (PhoneNum, SellerId),
  FOREIGN KEY (SellerId) REFERENCES Seller(SellerId)
);

CREATE TABLE Payment (
  PaymentId VARCHAR(7) NOT NULL,
  PaymentDate DATE NOT NULL,
  PaymentType VARCHAR(10) NOT NULL,
  CustomerId VARCHAR(6) NOT NULL,
  CartId VARCHAR(7) NOT NULL,
  PRIMARY KEY (paymentId),
  total_amount numeric(6)
);