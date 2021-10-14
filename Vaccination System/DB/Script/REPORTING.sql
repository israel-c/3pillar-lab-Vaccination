use vaccination
go
 
 ----------------------------------[logs table] VIEW---------------------------
create view [logs table]
as
select * from [User logs]
go

select * from [logs table]
go
-----------------Citizen and Vaccine VIEW----------------------------

create view CitizenVaccine
as
select c.Name as [Name citizen], v.Name as [Vaccine name], v.Dose from Citizen as c
inner join Vaccine as v on c.idVaccine=v.idVaccine
go
select *from CitizenVaccine

---------------------select states(name)  where citizens(name, paternal surname) were vaccined in 2021-----------
go
create view [citizens and State in 2021]
as
select  c.Name, c.[Paternal surname], s.Name as [State name], ca.Date  from Citizen as c 
inner join Campus as ca on ca.idCampus= c.idCampus
inner join State as s on ca.idState=s.idState
where CONVERT(VARCHAR(25), ca.Date, 126) like '2021%'
go
select *from [citizens and State in 2021]


------------------------Age of citizen that recieved pifzer vaccine----------------

go
create view [Age in pfizer vaccine]
as
select ci.Name as [Citizen Name], ci.Age, v.Name from Citizen as ci
inner join Vaccine as v on  ci.idVaccine=v.idVaccine
 where v.Name = 'Pfizer' 

go
select * from [Age in pfizer vaccine]
go

-------------------------- Personnel and personnel key--------------------- 
go
create view [Personnel and personnel key]
as
select p.Name as [Personnel name], pk.[idPersonnel key] , pk.Name as [key name] from Personnel as p
inner join [Personnel key] as pk on p.[idPersonnel key]=pk.[idPersonnel key]
go
select * from  [Personnel and personnel key]

---------------------------Citizen Report table view---------------------------------------------------
go
 create view report 
 as
select cr.idReport,c.Name as [citizen name], c.[Paternal surname],
c.Age, ca.Address, S.Name as [State name], v.Name as [vaccine name], v.dose, cr.[Vaccination date] 
from [Citizen report] as cr
join Citizen as c on cr.idCitizen = c.idCitizen
join Campus as ca on cr.idCampus=ca.idCampus
join State as s on ca.idState= s.idState
join Vaccine as v on cr.idVaccine=v.idVaccine 
go

select * from report
 -----------------------------------Personnel and Campus view-------------------------------------
 go
 create view [Personnel and Campus]
 as
 select p.Name as [Personnel name], p.[Maternal surname], p.[Paternal surname],p.idCampus, ca.Address, ca.Date, 
 s.Name as [State name] from Personnel as p
 inner join Campus as ca on p.idCampus=ca.idCampus
 inner join State as s on ca.idState= s.idState
 go
 
 select * from [Personnel and Campus]
 ---------------------------------------Select citizens and campus over age average view----------------------------
 go
 create view [Citizen and Campus over age average]
 as
 select c.Name as [Citizen name], c.[Maternal surname],c.Age, c.[Paternal surname],c.idCampus, ca.Address, ca.Date, 
 s.Name as [State name]  from Citizen as c
 inner join Campus as ca on c.idCampus=ca.idCampus
 inner join State as s on ca.idState= s.idState
 where c.Age > (select AVG(Age) from Citizen)
 go
 select * from [Citizen and Campus over age average]

 -------------------------------------- citizens age between 20 and 50 that were vaccined in 2020-------------
 go
 create view [Citizen age between 20 and 50  that were vaccined in 2020]
 as
 select c.Name as [Citizen name], c.[Maternal surname],c.Age, c.[Paternal surname],c.idCampus, ca.Address, ca.Date, 
 s.Name as [State name]  from Citizen as c
 inner join Campus as ca on c.idCampus=ca.idCampus
 inner join State as s on ca.idState= s.idState
 where  CONVERT(VARCHAR(25), ca.Date, 126) like '2020%' and  c.Age between 20 and 50 
 go
 select * from [Citizen age between 20 and 50  that were vaccined in 2020]

 ---------------------------------Citizens that will be vaccinated in 2022--------------
 go
 create view [Citizens under 25 and will be vaccinated in 2022]
 as
 select c.Name as [Citizen name], c.[Maternal surname],c.Age, c.[Paternal surname],c.idCampus,
 ca.Address, ca.Date,s.Name as [State name]  from Citizen as c
 inner join Campus as ca on c.idCampus=ca.idCampus
 inner join State as s on ca.idState= s.idState
 where  CONVERT(VARCHAR(25), ca.Date, 126) like '2022%' and c.Age < 25 
 go 
 
 select * from [Citizens under 25 and will be vaccinated in 2022]


 ---------------------------------Match personnel and State from CDMX  -------------------
go
create view [Match personnel and State from CDMX]
as
 select p.idPersonnel, p.Name, p.[Maternal surname],p.[Paternal surname], 
 s.idState,s.Name as [State name] from Personnel as p 
 inner join Campus as ca on p.idCampus=ca.idCampus 
 inner join State as s on ca.idCampus=s.idState
 where s.Name= 'CDMX' 
 go
select * from [Match personnel and State from CDMX]

 ---------------------------select Citizens that will be have 1 dose and campus in 2022--------------
 go
 create view [Citizens that will have 1 dose in 2022]
 as
 select c.Name as [Citizen name], c.[Maternal surname], c.[Paternal surname],c.Age,
  v.Name as [Vaccine name], v.Dose,  c.idCampus, ca.Address, ca.Date,s.Name as [State name]  from Citizen as c
 inner join Vaccine as v on c.idVaccine=v.idVaccine
 inner join Campus as ca on c.idCampus=ca.idCampus
 inner join State as s on ca.idState= s.idState
 where CONVERT(VARCHAR(25), ca.Date, 126) like '2022%' and v.Dose= 1
 go 
 
 select * from [Citizens that will have 1 dose in 2022]
 
 ------------------------------ total vaccines that will be used until 2022------------------------------
go 
create view [total vaccines that will be used until 2022]
as
Select  (sum(v.Dose)-max(c.idCitizen)+max(c.idCitizen)) as [total vaccines] 
from Citizen as c
join Vaccine as v on c.idVaccine=v.idVaccine
go
select* from [total vaccines that will be used until 2022]
go

-----------------------------------Total pfizer vaccines----------------------------
create view [Total pfizer vaccines]
as
Select (count(idCitizen)*2) as [total pfizer vaccines] 
from Citizen as c
inner join Vaccine as v on c.idVaccine=v.idVaccine
where v.idVaccine =2 
go
select* from [Total pfizer vaccines]
-----------------------Age average of citizens that will take moderna vaccine---------------
go
create view [Average of citizens that will take moderna vaccine]
as
select (avg(Age))as Average from Citizen as c
inner join Vaccine as v on c.idVaccine=v.idVaccine
where v.idVaccine = 3
go
select * from [Average of citizens that will take moderna vaccine]

