use ExerciseDb
create table Products1
(PId int primary key identity(1000,1),
Pname nvarchar(50) not null,
PPrice float,
PTax as PPrice*0.10 persisted,
PCompany varchar(50) check( PCompany IN ('Samsung', 'Apple', 'Redmi', 'HTC', 'RealMe')), 
PQt int check(PQt>=1)default 1)

insert into Products1 values('Mobile', 20000.00, 'Apple' ,2)
insert into Products1 values('Earpods', 14000.00, 'Redmi' ,8)
select * from Products1