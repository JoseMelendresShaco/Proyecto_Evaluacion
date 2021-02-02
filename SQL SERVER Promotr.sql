EXEC sp_configure filestream_access_level, 2  
RECONFIGURE;

/*Base de datos*/
create database promotor;
use promotor;
/*Base de datos*/


/*COMPILAR ESTAS TABLAS*/
create table prospecto2(
id int identity not null,
Nombre varchar (100) not null,
PrimerApellido varchar (100) not null,
SegundApellido varchar (100),
Calle varchar (150) not null,
Numero int not null,
CodigoPostal int not null,
Telefono varchar (20),
RFC varchar (20) not null,
/*Documento varchar (200) not null,*/
estatus varchar (10) not null,
observaciones varchar(300),
PRIMARY KEY (RFC),
);

create table documentos(
id int identity not null,
RFCProspecto varchar(20) not null,
nombre varchar (100)not null,
realname varchar (100)not null,
documento varbinary (max) not null,
PRIMARY KEY (id),
FOREIGN KEY (RFCProspecto) REFERENCES prospecto2 (RFC)
);
/*HASTA AQUI*/

select *from documentos;
insert into prospecto2 values ('nombre','pA','sA','cale',1,12345,'6871235030','RFCRFC', 'documento','Enviado','');
drop table prospecto2;
drop table documentos;

select *from prospecto2;
truncate table documentos;

UPDATE prospecto2 SET observaciones = 'No pos si esta fuera' WHERE id=2;