create database Course

use Course
create table Students (
 Id int primary key identity (1,1),
 [FullName] varchar(50),
 [Birhday] date,
 [Address] varchar(200),
)


create table Groups (
 Id int primary key identity (1,1),
 [Name] varchar(50),
 [RoomId] int foreign key references Rooms(Id),
 [EducationId] int foreign key references Educations(Id),
 [WeekDaySeansId] int foreign key references WeekDaySeans(Id)
)

create table Rooms (
 Id int primary key identity (1,1),
 [Name] varchar(50),
 [Capacity] int 
)

create table GroupStudents (
 Id int primary key identity (1,1),
 [StudentId] int foreign key references Students(Id),
 [GroupId] int foreign key references Groups(Id)
)



create table GroupTeachers(
Id int primary key identity (1,1),
[GroupId] int foreign key references Groups(Id),
[TeachersId] int foreign key references Teachers(Id)
)

create table Cities(

[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[CountryId] int foreign key references Countries(Id)

)

create table Countries(
Id int primary key identity (1,1),
[Name] varchar(50)

)


create table Educations (
 Id int primary key identity (1,1),
 [Name] varchar(50),
 [Duration] int
)


create table Teachers (
 Id int primary key identity (1,1),
 [FullName] varchar(50),
 [Email] varchar(50),
 [Address] varchar(50),
 [Salary] int
)

create table StaffMembers(
 Id int primary key identity (1,1),
 [FullName] varchar(50),
 [Salary] varchar(50),
 [CityId] int foreign key references Cities(Id)

)

create table Role(
Id int primary key identity (1,1),
[Name] varchar(50)
)

create table RoleMembers(
Id int primary key identity (1,1),

[RoleId] int foreign key references Role(Id),
[MemberId] int foreign key references StaffMembers(Id)

)


create table WeekDaySeans(
Id int primary key identity(1,1),

[WeekDayId] int foreign key references WeekDays(Id),

[SeansId] int foreign key references Seanses(Id)

)


create table Seanses(

Id int primary key identity(1,1),
[Name] varchar(50)
)

create table WeekDays(
Id int primary key identity(1,1),
[Name] varchar(50)
)