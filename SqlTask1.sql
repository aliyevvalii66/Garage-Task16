CREATE DATABASE DemoApp
USE dEMOaPP


CREATE TABLE Users (
	Id int , 
	Name nvarchar(50),
	Surname nvarchar(50),
	Email nvarchar(100),
	ContactNumber nvarchar(30),
	Age int ,
	Address nvarchar(100)
);

Insert into Users(Id , Name , Surname , Email , ContactNumber , Age , Address)
Values (1 , 'Ali' , 'Aliyev' , 'ali@mail.ru' , '0517546666' , 21 , 'dsaduned'),
(2 , 'Ferhad' , 'Xidirli' , 'Farhad@mail.ru' , '0504010122' , 22 , 'dsa3213dsadduned'),
(3 , 'Nicat' , 'Huseyn' , 'niko@mail.ru' , '0503089278' , 22 , 'dasdasdasdasdwe123');

Select * from Users


Create table Category (
Id int,
Name nvarchar(50),
Slug nvarchar(50),
CreatedAt datetime , 
IsActive bit
);
Select * from Category

Insert into Category (Id , Name , Slug , CreatedAt , IsActive)
Values (1 , 'icki' , 'das','2024-05-07 10:30:00' , 1),
(2 , 'et' , 'das','2024-05-07 10:30:00' , 1),
(3 , 'spirtli icki' , 'das','2024-05-07 10:30:00' , 1)


Select Name , Surname , Email
from Users


Select Name , IsActive
from Category