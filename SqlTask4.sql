create database DemoApp


use DemoApp



Create table Countries(
Id int primary key identity,
Name varchar(50) unique , 
Area float 
)
Insert into Countries
values ('Azerbaycan' , 1200) , 
('Gurcustan' , 1000) , 
('Isvecre' , 2000)


Create table Cities(
Id int primary key identity,
Name varchar(50) , 
Area float ,
CountryId int foreign key references Countries(Id)
)

Insert into  Cities
values ('Baku' , 200 , 1),
('Tiblisi' , 100 , 2),
('Basel' , 259 , 3),
('Bern' , 300 , 3), 
('Gence' , 50 , 1),
('Batumi' , 80 , 2)

Create table People(
Id int primary key identity(1,1),
Name varchar(50) not null , 
Surname varchar(50) ,
PhoneNumber varchar(50),
Email varchar(50),
Age int ,
Gender varchar(50) , 
HasCitizenship bit,
CityId int foreign key references Cities(Id)
)
Insert into People
values ('Ali' , 'Aliyev' , '0517546666' , 'Ali@mail.ru' , 21 , 'man' , 1 , 1),
('Ferhad' , 'Xidir' , '0517546213123166' , 'Farhad@mail.ru' , 22 , 'man' , 1 , 2),
('Elvin' , 'Zeynizade' , '02359248203' , 'Elvin@mail.ru' , 25 , 'man' , 1 , 3),
('Fatime' , 'Aliyeva' , '2132147777' , 'fatime@mail.ru' , 28 , 'woman' , 1 , 6)



--Task

--1
Select p.Name , p.Surname , p.Age , ci.Name 'City' , co.Name 'County' from People as p
join Cities as ci
on ci.Id = p.CityId
join Countries as co
on co.Id = ci.CountryId

--2
Select * from Countries
Order by Area


--3
Select * from Cities
Order by Name Desc


--4
Select COUNT(*) '20000 den boyuk olde sayi' from Countries
Where Area > 20000

--5
Select Max(Area) from Countries
Where Name LIKE 'I%'

--6
Select co.Name from Countries as co
Union
Select c.Name from Cities as c

--7
select c.Name 'City name', COUNT(*) 'Count'
from People p
join Cities c ON p.CityId = c.Id
group by c.Name


--8
Select name , COunt(*) 
From People
Group by CityId
Having Count(*) > 5




-- Internetden goturdum ---------
SELECT CityName, PersonCount
FROM (SELECT c.Name AS CityName, COUNT(*) AS PersonCount
    FROM People p
    JOIN Cities c ON p.CityId = c.Id
    GROUP BY c.Name) as PersonCount
WHERE PersonCount > 5