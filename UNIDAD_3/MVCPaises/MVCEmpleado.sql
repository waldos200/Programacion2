create database MVCEmpleado
go

use MVCEmpleado
go

create table tblEmpleado(IDEmpleado int primary key not null, Nombre nvarchar(100) not null, Genero nvarchar(10) not null, Ciudad nvarchar(50) not null, idDepartamento int not null references tblDepartamento(idDepartamento));

insert into tblEmpleado(IDEmpleado,Nombre,Genero,Ciudad,idDepartamento) values (1, 'Juan Pérez', 'Masculino','San Salvador',1);
insert into tblEmpleado(IDEmpleado,Nombre,Genero,Ciudad,idDepartamento) values (2, 'Ana López', 'Femenino','Soyapango',2);
insert into tblEmpleado(IDEmpleado,Nombre,Genero,Ciudad,idDepartamento) values (3, 'Pedro Hérnandez', 'Masculino','Santa Tecla',1);
insert into tblEmpleado(IDEmpleado,Nombre,Genero,Ciudad,idDepartamento) values (4, 'María Ramírez', 'Femenino','San Miguel',3);
insert into tblEmpleado(IDEmpleado,Nombre,Genero,Ciudad,idDepartamento) values (5, 'Jose Martínez', 'Masculino','Santa Ana',1);
insert into tblEmpleado(IDEmpleado,Nombre,Genero,Ciudad,idDepartamento) values (6, 'Francisca Escobar', 'Femenino','Chalatenango',2);

select * from tblEmpleado

create table tblDepartamento(idDepartamento int primary key not null, NombreDepartamento nvarchar(50) not null);

insert into tblDepartamento(idDepartamento, NombreDepartamento) values (1, 'Tecnología');
insert into tblDepartamento(idDepartamento, NombreDepartamento) values (2, 'Recursos Humanos');
insert into tblDepartamento(idDepartamento, NombreDepartamento) values (3, 'Finanzas');

select * from tblDepartamento