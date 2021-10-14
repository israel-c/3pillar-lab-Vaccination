use vaccination

create table [User logs]
(
idLog int  identity(1,1) PRIMARY KEY not null,
[User name] nvarchar(50) not null,
[Table name] nvarchar(30) not null,
Commands nvarchar(30)not null,
[Action date] datetime not null,
)
go        
                                    --Trigger for reading actions on Citizen report 

create trigger logs
on [Citizen report]
after delete, insert, update
as
insert into [User logs]
values(SYSTEM_USER,'Citizen report','delete/insert/update',GETDATE())
go
                       --Procedure to insert data into vaccine table 

go
create procedure insert_into_vaccine 
(@name varchar(20),@dose varchar(5)
)
as
begin
     insert into Vaccine 
	 values(@name,@dose)
	 end
 go
exec insert_into_vaccine 'Sinovac','2' 
go

                      --Procedure to update data from Vaccine table

create procedure UpdateVaccine
(@name nvarchar (20))
 as 
 begin
 update Vaccine
 set Name = @name
 where idVaccine = 5
 end
 go
 exec UpdateVaccine 'Sinovac coronavac'
 go

                 --Procedure to delete data from Vaccine table
 
 create procedure DeleteVaccine
 (@id int)
 as
 begin
 delete from Vaccine
 where idVaccine=@id
end
go
exec DeleteVaccine 5 
go

                        --Procedure to select data from Vaccine table

create procedure SelectVaccine
(@Id int)
as
begin
select Name from Vaccine
       where Dose = @Id
end
go
exec SelectVaccine 1 -- between 1 and 4
go

                            --Procedure to insert data into State table 

create procedure InsertState
(@NameState nvarchar(25))
as
begin
 insert into State(Name)
        values(@NameState)
end
go
exec InsertState 'San Luis potosi'
go

                        --Procedure to update data from State table

create procedure UpdateState
(@NameState nvarchar(20))
as 
begin
update State
set Name= @NameState
where Name = 'Ciudad de México'
end
exec UpdateState 'CDMX'
go

                  --Procedure to delete data from State table

create procedure DeleteState
(@Id int)
as
begin
delete from State
    where idState = @Id
end
go
exec DeleteState 22 
go

                      --Procedure to select data from State table

create procedure SelectState
(@Statechar char(1))
as 
begin
select * from State
where Name  like +@Statechar+'%'
end
go
exec SelectState 'b' -- State name that starts witch 'letter'
go

                  --Procedure to insert data into Personnel key table

create procedure InsertPersonnelKey
(@Key tinyint,@Name nvarchar(20))
as
begin
insert into [Personnel key]([idPersonnel key],Name)
        values(@Key,@Name)
end
go
exec InsertPersonnelKey 60,'Paramedico'
go

              --Procedure to update data into  Personnel key table

create procedure UpdatePersonnelKey
(@NamePersonnel nvarchar(20), @Key tinyint)
as 
begin
update [Personnel key]
set Name =@NamePersonnel 
where [idPersonnel key] = @Key
end
go
exec UpdatePersonnelKey 'Paramedic',60
go

                 --Procedure to delete data from  Personnel key table

create procedure DeletePersonnelKey
(@idKey tinyint)
as
begin
delete from [Personnel key]
where [idPersonnel key]=@idKey
end
go
exec DeletePersonnelKey 60 --key of the last row
go

                      --Procedure to select data from  Personnel key table

create procedure SelectPersonnelKey
(@PersonnelKey tinyint)
as
begin
select Name as [Personnel name] from [Personnel key]
where [idPersonnel key] = @PersonnelKey
end
go
exec SelectPersonnelKey 20 --Key among 10,20,30
go

                    --Procedure to insert data into Campus table
go
create procedure InsertCampus
(@Addres nvarchar(100),@Date smalldatetime, @idState tinyint)
as
begin
insert into Campus(Address,Date,idState)
        values(@Addres,@Date,@idState)
end
go
exec InsertCampus 'Cendy Margarita Masa de Juarez, Av. Flores Magon,218,Chilpancingo','2022-10-10 09:00:00',12 
go

                     --Procedure to update data into Campus table

create procedure UpdateCampus
(@idCamp tinyint,
@Address nvarchar(100))
as
begin
update Campus
set Address= @Address
where idCampus = @idCamp
end
go
exec UpdateCampus 9,'INMEGEN,Av.Gobernadores, 371,'
go

                   --Procedure to delete data from Campus table

create procedure DeleteCampus
(@id tinyint)
as
begin
delete from Campus
where idCampus= @id
end
go
exec DeleteCampus 17
go

                         --Procedure to select data from Campus table

create procedure SelectCampus
(@letter char)
as
begin
select * from Campus
where Address like +@letter+'%'
end
go
exec SelectCampus A
go

                     --Procedure to insert data into Personnel table

create procedure InsertPersonnel
(@Name nvarchar(30),@Msurname nvarchar(30),@Psurname nvarchar(30),@Address nvarchar(50),
@Telephone nvarchar(10),@idPersonnel tinyint,@idCampus tinyint)
as
begin
insert into Personnel
values(@Name,@Msurname,@Psurname,@Address, @Telephone,@idPersonnel,@idCampus)
end
go
exec InsertPersonnel 'Claudia', 'Montufar','Montero','Col. Universal,943','2493517952',20,10
go

                      --Procedure to update data into Personnel table

create procedure UpdatePersonnel
(@NewTelephone nvarchar(10), @id tinyint)
as
begin
update Personnel
set [Telephone number]= @NewTelephone
where idPersonnel=@id
end
go
exec UpdatePersonnel '8612308410',4
go

                        --Procedure to delete data from Personnel table

create procedure DeletePersonnel
(@id tinyint)
as
begin
delete from Personnel
where idPersonnel = @id
end
go
exec DeletePersonnel 16
go
                       --Procedure to select data from Personnel table

create procedure SelectPersonnel
(@idPersonnelkey tinyint)
as
begin 
select * from Personnel
where [idPersonnel key] = @idPersonnelkey 
end
go
exec SelectPersonnel 20  --idPersonnel between 10-30
go

                --Procedure to insert data into Citizen table

create procedure InsertCitizen
(@Name nvarchar(30),@Msurname nvarchar(30),@Psurname nvarchar(30),@Address nvarchar(50),
@Telephone nvarchar(10), @Age tinyint, @idCampus tinyint,@idVaccine tinyint)
as
begin
insert into Citizen
        values(@Name,@Msurname,@Psurname,@Address,@Telephone,@Age,@idCampus,@idVaccine)
end
go
exec InsertCitizen 'Gonzalo','Mancilla','Maduro','col. La cima,43,Matexco','6842046287',53,9,3
go
                   --Procedure to update data into Citizen table

create procedure UpdateCitizen
as
begin
update Citizen
set idCampus = 10
where [Telephone number] like '6%' 
end
go
exec UpdateCitizen
go

                          --Procedure to delete data from Citizen table
go
create procedure DeleteCitizen
(@id tinyint)
as
begin
delete from Citizen
where idCitizen = @id
end
go
exec DeleteCitizen 19
go
                           --Procedure to select data from Citizen table
go
create procedure SelectCitizen
as
begin
select * from Citizen 
where Age between 25 and 50
end
go
exec SelectCitizen
go
                         --Procedure to insert data into Citizen Report table
go
create procedure InsertCitizenReport
(@idCitizen tinyint,
@idCampus tinyint,
@idVaccine tinyint, 
@Dose tinyint, 
@VaccinationDate smalldatetime)
as
begin
insert into [Citizen report]
        values(@idCitizen,@idCampus,@idVaccine,@Dose,@VaccinationDate)
end
go
exec InsertCitizenReport 28,3,3,2,'2021-10-01 09:30:00'
go

                          --Procedure to update data into Citizen Report table
go
create procedure UpdateCitizenReport
(@id tinyint)
as
begin
update [Citizen report]
set [Dose number] = 2
where idReport= @id
end
go
exec UpdateCitizenReport 1


go

                            --Procedure to delete data from Citizen Report table

create procedure DeleteCitizenReport
(@id tinyint)
as
begin
delete from [Citizen report]
where idReport= @id
end
go
exec DeleteCitizenReport 12
go

                          --Procedure to delete data from Citizen Report table

create procedure SelectCitizenReport
as
begin
select cr.idReport,c.Name as [citizen name], c.[Paternal surname],
c.Age, ca.Address, S.Name as [State name], v.Name as [vaccine name], cr.[Dose number], cr.[Vaccination date] 
from [Citizen report] as cr
join Citizen as c on cr.idCitizen = c.idCitizen
join Campus as ca on cr.idCampus=ca.idCampus
join State as s on ca.idState= s.idState
join Vaccine as v on cr.idVaccine=v.idVaccine 
end
go
exec SelectCitizenReport
go

