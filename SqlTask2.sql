Create database DemoApp
Use DemoApp


CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name nvarchar(50) not null,
    Surname nvarchar(50) not null,
    Email NVARCHAR(100) UNIQUE,
	RegistrationDate datetime default GETDATE(),
	ContactNumber nvarchar(50) default '+994000000000',
	Age int check (Age > 18),
	Address nvarchar(50)
);

INSERT INTO Users (Name, Surname, Email, RegistrationDate, ContactNumber, Age, Address)
VALUES ('Farhar', 'Xidir', 'Fako@mail.ru', GETDATE(), '+994517546666', 25, 'Nerimanov'),
('Ali', 'Aliyev', 'ali@mail.ru', GETDATE(), '+994517546666', 22, '7ci mkr'),
('Nicat', 'Huseyn', 'nicat@mail.ru', GETDATE(), '+48124812412', 21, 'Elmler');

CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name nvarchar(50) not null,
	CreatedAt DATETIME Default GetDate() CHECK (CreatedAt >= GETDATE()),
	IsActive bit
);

Insert Into Categories(Name , CreatedAt, IsActive)
Values('dasdasda', GETDATE(), 1)


Select Name , Surname , Email
From Users

Select Name , IsActive
from Categories
