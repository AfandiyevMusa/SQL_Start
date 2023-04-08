create table Users ( 
    Id int,
    Name nvarchar(50),
    Surname nvarchar(50),
    Age int,
    Email nvarchar(50),
    IsDeleted bit default 0
)

create table Educations (
    Id int,
    Name nvarchar(50)
)

create table Teachers (
    Id int,
    FullName nvarchar(50),
    Age int,
    Email nvarchar(50),
    Address nvarchar(50),
    IsDeleted bit default 0
)

insert into Users(Id, Name, Surname, Age, Email)
values(1, 'Musa', 'Afandiyev', 19, 'musaha@code.edu.az'),
(2, 'Murad', 'Jafarov', 19, 'jafarov@code.edu.az'),
(3, 'Nicat', 'Novruzzade', 21, 'nicat@code.edu.az'),
(4, 'Ramil', 'Allahverdiyev', 26, 'ramil@code.edu.az'),
(5, 'Resul', 'Hesenov', 15, 'resul@code.edu.az')


insert into Educations(Id, Name)
values(1, 'Education1'),
(2, 'Education2'),
(3, 'Education3'),
(4, 'Education4'),
(5, 'Education5')


insert into Teachers(Id, FullName, Age, Email, Address)
values(1, 'Musa Afandiyev', 19, 'musaha@code.edu.az', 'neftciler'),
(2, 'Murad Jafarov', 19, 'jafarov@code.edu.az', 'ehmedli'),
(3, 'Nicat Novruzzade', 21, 'nicat@code.edu.az', 'nzs'),
(4, 'Ramil Allahverdiyev', 26, 'ramil@code.edu.az', 'azadliq'),
(5, 'Resul Hesenov', 15, 'resul@code.edu.az', 'genclik')

select * from Users
select * from Educations
select * from Teachers

-- task1
select * from Users

-- task2
select * from Users where Age < 20

-- task3
select COUNT(*) from Users

-- task4
update Teachers set IsDeleted = 1 where Id > 1 and Id < 4
select [FullName], [Age], [Address] from Teachers where IsDeleted = 1

-- task5
select COUNT(*) from Teachers where Age > 30
select COUNT(*) from Teachers where Age > 20