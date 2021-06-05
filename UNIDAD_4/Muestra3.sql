create database Muestra3
go

use Muestra3
go

create table Empleado(
ID int identity primary key not null,
Nombre nvarchar(30) not null,
Genero nvarchar(10) not null,
SalarioAnual money,
PagoXHora money,
HorasXSemana int,
Discriminador nvarchar(12) not null
);

insert into Empleado(Nombre, Genero, SalarioAnual, Discriminador) values ('Marco', 'Masculino', 60000, 'Permanente');
insert into Empleado(Nombre, Genero, PagoXHora, HorasXSemana, Discriminador) values ('Silvia', 'Femenino', 50, 160, 'Contrato');
insert into Empleado(Nombre, Genero, PagoXHora, HorasXSemana, Discriminador) values ('Benito', 'Masculino', 40, 120, 'Contrato');
insert into Empleado(Nombre, Genero, SalarioAnual, Discriminador) values ('Rosa', 'Femenino', 45000, 'Permanente');
insert into Empleado(Nombre, Genero, SalarioAnual, Discriminador) values ('María', 'Femenino', 30000, 'Permanente');
insert into Empleado(Nombre, Genero, PagoXHora, HorasXSemana, Discriminador) values ('Valeria', 'Femenino', 30, 140, 'Contrato');
insert into Empleado(Nombre, Genero, SalarioAnual, Discriminador) values ('Juan', 'Masculino', 80000, 'Permanente');

select * from Empleado