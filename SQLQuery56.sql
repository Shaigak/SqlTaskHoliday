create database Compony

use Compony

create table Employees(

Id int primary key identity(1,1),
[Name] varchar(50),
[Surname] varchar(50),
[Age] int ,
[Salary] varchar(50),
Position varchar(50),
IsDeleted bit ,
[CountryId] int foreign key references Countries(Id),
[CityId] int foreign key references Cities(Id)
)

select * from Employees

create table Cities(
Id int primary key identity(1,1),
[CityName] varchar(50)


)



create table Countries (
Id int primary key identity(1,1),
[CountryName] varchar(50),
[CityId] int foreign key references Cities(Id)

)





select Employees.Name, Employees.Surname,Employees.Position,  Countries.CountryName , Cities.CityName
from Countries
inner join Employees
on Countries.Id=Employees.CountryId
INNER JOIN Cities
on Cities.Id=Countries.CityId

use Compony




select  Employees.Name ,Countries.CountryName , Employees.Salary from Countries  

inner join Employees
on Countries.Id=Employees.CountryId
 
 where Employees.Salary>2000

 use Compony



select Countries.CountryName , Cities.CityName from Countries
inner join Cities
on Cities.Id=Countries.CityId




select  Employees.Name , Employees.Surname ,Countries.CountryName , Employees.Salary,Employees.Age, Cities.CityName  from Countries  
inner join Cities
on Cities.Id=Countries.CityId


inner join Employees
on Countries.Id=Employees.CountryId
 
 where Employees.Position ='Reseption'


 
 
 
 
 select  Employees.Name , Employees.Surname ,Countries.CountryName , Employees.Salary,Employees.Age, Cities.CityName  from Countries  
inner join Cities
on Cities.Id=Countries.CityId


inner join Employees
on Countries.Id=Employees.CountryId
 
 where Employees.IsDeleted ='True'

 
