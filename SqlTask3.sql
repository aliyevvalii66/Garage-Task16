--CREATE DATABASE DrugstoreApp

--USE DrugstoreApp

CREATE TABLE Owners(
 Id INT PRIMARY KEY IDENTITY(1,1),
 Name NVARCHAR(50) NOT NULL,
 Surname NVARCHAR(50)
)

CREATE TABLE Pharmacies(
 Id INT PRIMARY KEY IDENTITY(1,1),
 Name NVARCHAR(50) NOT NULL,
 Address NVARCHAR(100) NOT NULL,
 ContactNumber NVARCHAR(50) NOT NULL,
 CreationDate DATETIME DEFAULT GETDATE(),
 OwnerId INT FOREIGN KEY REFERENCES Owners(Id)
)



CREATE TABLE Pharmacists(
 Id int PRIMARY KEY IDENTITY(1,1),
 Name NVARCHAR(50),
 Surname NVARCHAR(50),
 Age INT ,
 Experience NVARCHAR(255),
 PharmacieId int FOREIGN KEY REFERENCES Pharmacies(Id)
)

CREATE TABLE Drugs(
 Id int PRIMARY KEY IDENTITY(1,1),
 Name NVARCHAR(50),
 Price FLOAT , 
 [Count] INT ,
 PharmacieId int FOREIGN KEY REFERENCES Pharmacies(Id)
)

INSERT INTO Owners
VALUES ('Ali','Aliyev'),
	   ('Ferhad','Askerov');

INSERT INTO Pharmacies(Name , Address , ContactNumber , OwnerId)
VALUES ('Gunesh Aptek' , 'Nerimanov rayounu' , '0517546666' , 1),
	   ('Salam Aptek' , 'Nesimi rayounu' , '0554234123' , 2)

INSERT INTO Pharmacists(Name , Surname ,Age,Experience , PharmacieId )
VALUES ('Nurlan' , 'Nazimov' , 21 , '4il ish gunesh apketde ish tecrubesi' , 1),
('Abbas' , 'Hesenli' , 26 , '9il ish salam apketde ish tecrubesi' , 2)

INSERT INTO Drugs(Name , Price , [Count] , PharmacieId)
VALUES ('BashAgriDermani' , 4 , 150 , 1),
('QarinAgriDermani' , 10 , 100 , 2)

Select o.Name 'Sahibkar adi' , o.Surname 'Sahibkar soyadi' , p.Name 'Ishcinin adi' ,p.Experience 'Ishcinin tecrubesi' , d.Name 'Derman adi' ,d.Count 'Derman sayi' From Owners as o
join Pharmacies as ph
on o.Id = ph.OwnerId
join Pharmacists as p
on ph.Id = p.PharmacieId
join Drugs as d
on ph.Id = d.PharmacieId