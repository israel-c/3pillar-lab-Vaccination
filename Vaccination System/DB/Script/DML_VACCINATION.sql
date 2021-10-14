USE vaccination

go
------------------------------------
-- data insertion into State table--
------------------------------------
insert into State(Name)
       values('Aguascalientes')

insert into State(Name)
       values('Baja California')

insert into State(Name)
       values('Baja California Sur')

insert into State(Name)
       values('Campeche')

insert into State(Name)
       values('Coahuila')

insert into State(Name)
       values('Colima')

insert into State(Name)
       values('Chiapas')

insert into State(Name)
       values('Chihuahua')

insert into State(Name)
       values('Durango')

insert into State(Name)
       values('Ciudad de México')

insert into State(Name)
       values('Guanajuato')

insert into State(Name)
       values('Guerrero')

insert into State(Name)
       values('Hidalgo')

insert into State(Name)
       values('Jalisco')

insert into State(Name)
       values('México')

insert into State(Name)
       values('Michoacan')

insert into State(Name)
       values('Oaxaca')

insert into State(Name)
       values('Campeche')

insert into State(Name)
       values('Yucatan')

insert into State(Name)
       values('Veracruz')

insert into State(Name)
       values('Puebla')

insert into State(Name)
       values('Tlaxcala')
	   
insert into State(Name)
       values('Hidalgo')
go
-------------------------------------------
-- data insertion into Personel key table--
-------------------------------------------

go
 insert into [Personnel key] ([idPersonnel key], Name)
       values(10,'Doctor')
	   
insert into [Personnel key] ([idPersonnel key], Name)
       values(20,'Nurse')
 
insert into [Personnel key] ([idPersonnel key], Name)
       values(30,'Administrative')

insert into [Personnel key] ([idPersonnel key], Name)
       values(40,'Policia')

insert into [Personnel key] ([idPersonnel key], Name)
       values(50,'coordiandor')
go
--------------------------------------	   
-- data insertion into Vaccine table--	 
--------------------------------------
go
insert into Vaccine(Name,Dose)
        values('CanSino',1)
insert into Vaccine(Name,Dose)
        values('Pfizer',2)
insert into Vaccine(Name,Dose)
        values('Moderna',2)
insert into Vaccine(Name,Dose)
        values('Jonhson & Johnsons',1)
go
--------------------------------------	   
-- data insertion into Campus table--	 
--------------------------------------
go
insert into Campus(Address,Date,idState) 
      values('unidad deportiva, Miramontes #546,Coquimatlan','2021-11-5 09:00:00',6)

insert into Campus(Address,Date,idState)
     values('Tecnologico,Av. Adolfo López Mateos #1801 Ote. Fracc. Bona Gens','2021-06-01 09:30:00',1)

insert into Campus(Address,Date,idState)
     values('Tecnologico, Blvd. Insurgentes #18235 Col. Libramiento','2021-10-01 09:30:00',2)

insert into Campus(Address,Date,idState)
     values('Unidad deportiva Crea, Blvd. Dolores #16841 Col. Parotas','2021-01-7 09:30:00',12)

insert into Campus(Address,Date,idState)
     values('UAG,654 Muñoz Rivera Ave. Suite 1124 San Juan','2021-03-07 10:30:00',14)

insert into Campus(Address,Date,idState)
     values('UNAM, University City, Coyoacán, 04510','2020-06-15 09:30:00',10)

insert into Campus(Address,Date,idState)
     values('Unidad deporiva, Col. Ninos Heroes,3754','2022-01-15 09:30:00',4)

insert into Campus(Address,Date,idState)
     values('Oficinas del PRI, Av. Jacarandas,226','2020-07-26 09:00:00',9)

insert into Campus(Address,Date,idState)
     values('IMSS, Av. Centro, 644','2021-03-10 09:00:00',7)

insert into Campus(Address,Date,idState)
     values('Zocalo de la capital, Av. Centro, 132','2022-03-10 09:00:00',3)

insert into Campus(Address,Date,idState)
     values('Zocalo de la capital, Av. Centro, 1974, Tlaquepaque','2022-03-10 09:00:00',14)

insert into Campus(Address,Date,idState)
     values('Arena Mexico, Av. Centro,675,Alvaro Obregon','2020-01-15 09:30:00',10)

insert into Campus(Address,Date,idState)
     values('Cancha municipal, Av. Ruiz Cortines,154,Nueva Italia','2021-06-20 09:30:00',6)

insert into Campus(Address,Date,idState)
     values('Centro de convenciones, Av. Jacarandas,854, Amado Nervo','2020-02-06 09:10:00',2)

insert into Campus(Address,Date,idState)
     values('Esc.primaria Lazaro Cardenas, Av.Alvarez ,956,Zitlala','2021-10-23 09:10:00',9)

insert into Campus(Address,Date,idState)
     values('Esc.sec. ESFAID, Av. Morelos,321 ,Amuzgo','2022-01-07 09:30:00',1)
go

--------------------------------------	   
-- data insertion into Personnel table	 
--------------------------------------
go

insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Israel','Villanueva','Cisneros','Col. Gladiola, 453,Chilpancingo,Gro.,MX',
	'7485645325',10,4)

insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Dalila','Garcia','Duarte','Col.Morelos, 846,Colima,MX',
	'2719526780',20,1)

insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Cristina','Mocteuma','Villanueva','Col.Miguel Hidalgo,65,Tuxtla,Chiapas,MX',
	'2719986780',20,9)

insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Hector','Saavedra','Montez','Col.Hermengildo,946,Coyoacan,CDMX',
	'6419986780',30,6)

insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Aracely','Sanchez','Gutierrez','Col.Davalos,461,Zapopan,Guadalajara,Jal.,Mx',
	'9751986780',10,10)
insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Ariana','Lorenzo','Sandoval','Col.Loma bonita,257,Aguascalientes,Aguas.,Mx',
	'9751986780',30,2)
insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Luis','Ruiz','Morales','Col. Colon,645,Campeche.,Mx',
	'9751986780',10,7)

 insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Ramon','Salgado','Mondragon','Col. Tres ases,La Paz,Mx',
	'1651992780',30,10)
	 
insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Matilda','Sagredo','Galvez','Col.Matamoros,Mexicali,Mx',
	'9965199278',10,3)

insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Pablo','Obrador','Salinas','Col.Tequila,831,Guadalajara,Jal.,Mx',
	'9751986780',20,10)
insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Pedro','Escobar','Calderon','Col.Tomatal,829,Guadalajara,Jal.,Mx',
	'3751986780',30,11)
insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Patricio','Santos','Zamora','Col.Tampico,675,Atlixco,Puebla,Mx',
	'6751986780',10,13)
insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Anastacio','Cisneros','Betancurt','Col.Sahara,126,Santa Maria,Yucatan.,Mx',
	'4983986780',20,15)
insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Roxana','Tavira','Heredia','Col.Guerrero,648, Xocomulco,Hidalgo,Mx',
	'2983936784',30,8)
insert into Personnel(Name,[Maternal Surname],[Paternal surname],
                 Address,[Telephone number],[idPersonnel key],idCampus)
	values('Octavio','Rivera','Duarte','Col.Amado Nervo,862,Urupango,Campeche,Mx',
	'2975936784',10,3)
go
--------------------------------------	   
-- data insertion into Citizen table	 
--------------------------------------
go
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Rodrigo','Dorantes','Jimenez','col. Dinastia, 8264','6518353171',30,9,3)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Andrea','Librado','Villa','col. Montreal, 615','8465835317',51,1,1)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Jose','Cano','Garcia','col. Haciendita, 615','9215835317',31,5,2)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Mireya','Moztezuma','Lopez','col. Dimension, 135','1672835317',60,3,4)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Maria','Montufar','Nava','col.Villas laurel, 752','3272835317',25,2,2)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Roberto','Solano','Zayas','col.San Francisco, 332','8351835317',36,10,1)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Julio','Malagon','Castro','col.America, 698','5391835317',21,9,4)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Martha','Gomez','Valdivia','col.Lazaro Cardenas,539','3391835380',80,6,2)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Martin','Garcia','Solano','col.Chapultepec,864','4130835380',45,3,1)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Said','Martinez','Cazares','col.Bugambilias,818','8310835352',22,1,3)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Samuel','Soriano','Tejeda','col.Punhuato,962','351083531',56,4,4)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Casandra','Torivio','Salazar','col.Noche Buena,1989','3971083518',27,11,2)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Carlos','Munoz','Santorini','col.Golondrias,656','1371083514',20,2,3)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Maurem','Quintanilla','Adame','col.Venustiano Carranza,243','2571083576',26,7,1)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Humberto','Garzon','Pacheco','col.Vicente Guerrero,8246','1371083554',45,8,3)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Patricio','Gallardo','Pastor','col.Santo,268','7971083585',50,2,2)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Francisco','Sosa','Carballo','col.Sinfonia,6845','9241089517',49,4,3)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Eduardo','Sanchez','Molineros','col.Salamanca,9762','3811089517',18,16,2)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Alan','Maldonado','Gonzales','col.Sor juana,792','8601089517',29,13,4)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Jorge','Derbez','Contreras','col.Chapultepec,686','9601089554',48,1,1)			
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Juana','Arcos','Manzanares','col.Benito Juarez,384','1601089568',19,15,3)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Juliana','Santorini','Paredes','col.Agustin de Iturbide,468','7901089568',70,11,3)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Diego','Bornes','De la o','col.Juan Escutia,169','3401089511',32,14,1)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Everardo','Castro','Simbada','col.Buena Vista,282','1001089579',66,2,4)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Monserrat','Davalos','Bustamante','col.Sirio,286','6101089569',25,9,2)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Miguel','Cobarrubias','Lazaro','col.Miguel Hidalgo,181','1801089525',90,10,1)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Salomon','Ibarra','Lovato','col.Morelos,615','9501089522',80,4,2)
insert into Citizen(Name,[Maternal surname],[Paternal surname],Address,[Telephone number],
                    Age,idCampus,idVaccine)
            values('Santiago','Monico','De la Fuente','col.Mondragon,762','2501089518',63,3,3)
go
-------------------------------------------	   
-- data insertion into Citizen Report table	 
------------------------------------------
go

insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(8,6,2,2,'2020-06-15 09:30:00')
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(15,8,3,2,'2020-07-26 09:00:00')
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(11,4,4,1,'2021-01-07 09:30:00') 
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(17,4,3,2,'2021-01-07 09:30:00')
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(3,5,2,2,'2021-03-07 10:30:00')
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(1,9,3,2,'2021-03-10 09:00:00')
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(7,9,4,1,'2021-03-10 09:00:00')
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(5,2,2,2,'2021-06-01 09:30:00')
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(13,2,3,2,'2021-06-01 09:30:00')
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(16,2,2,2,'2021-06-01 09:30:00')
insert into [Citizen report](idCitizen,idCampus,idVaccine,[Dose number],[Vaccination date])
            values(4,3,4,1,'2021-10-01 09:30:00')

go












