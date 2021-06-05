Create database Muestra1

USE Muestra1;
GO

create table Estudiantes(id int identity not null primary key, Nombre nvarchar(100) not null, Apellido nvarchar(100) not null, Genero nvarchar(50) not null);

insert into Estudiantes(Nombre, Apellido, Genero) values ('Marcos', 'Ayala', 'Masculino');
insert into Estudiantes(Nombre, Apellido, Genero) values ('Marta', 'Villalta', 'Femenino');
insert into Estudiantes(Nombre, Apellido, Genero) values ('Pedro', 'Bonilla', 'Masculino');
insert into Estudiantes(Nombre, Apellido, Genero) values ('Katia', 'López', 'Femenino');
insert into Estudiantes(Nombre, Apellido, Genero) values ('Antonio', 'Cabrera', 'Masculino');
insert into Estudiantes(Nombre, Apellido, Genero) values ('Juana', 'Ramírez', 'Femenino');

select * from Estudiantes;