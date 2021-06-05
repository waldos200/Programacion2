create database Ejemplo1
go 

use Ejemplo1
go

create table Productos(ID int not null primary key, Nombre nvarchar(50) not null, Precio money not null, Existencia int not null);

insert into Productos(ID,Nombre,Precio, Existencia) values(1, 'Laptop', 460.45, 25);
insert into Productos(ID,Nombre,Precio, Existencia) values(2, 'Desktop', 728.76, 48);
insert into Productos(ID,Nombre,Precio, Existencia) values(3, 'Server', 986.12, 29);
insert into Productos(ID,Nombre,Precio, Existencia) values(4, 'Printer', 160.27, 33);
insert into Productos(ID,Nombre,Precio, Existencia) values(5, 'Scanner', 129.39, 44);

select * from Productos; 

Create Procedure spProductosPorNombre
@nombreProducto nVarchar(50)
as
Begin
select * from productos
where nombre like @nombreProducto + '%'
End

create table Clientes(IDCli int not null primary key, Nombres varchar(50) not null, Apellidos varchar(50) not null, Email varchar(50), Telefono varchar(20));

insert into Clientes(IDCli,Nombres,Apellidos,Email,Telefono)values(1, 'Pedro', 'Perez', 'pedro.perez@empresa.com', '1234-5678');
insert into Clientes(IDCli,Nombres,Apellidos,Email,Telefono)values(2, 'Juan', 'Juarez', 'juan.juarez@empresa.com', '8765-4321');
insert into Clientes(IDCli,Nombres,Apellidos,Email,Telefono)values(3, 'Ana', 'Ayala', 'ana.ayala@empresa.com', '1122-3344');
insert into Clientes(IDCli,Nombres,Apellidos,Email,Telefono)values(4, 'Raul', 'Ramos', 'raul.ramos@empresa.com', '5566-7788');
insert into Clientes(IDCli,Nombres,Apellidos,Email,Telefono)values(5, 'Rosa', 'Ramirez', 'rosa.ramirez@empresa.com', '1212-3434');
insert into Clientes(IDCli,Nombres,Apellidos,Email,Telefono)values(6, 'REbeca', 'Rodriguez', 'rebeca.rodriguez@empresa.com', '1234-4321');

select * from Clientes;

Create procedure spInventario
as
begin
select * from productos
end

Create procedure spProductoPorId @IdProducto int
as 
begin
select * from Productos where id = @IdProducto
end

create procedure spInformacion
as
begin
select * from clientes
select * from productos
end

create table Estudiantes
(IdEstudiante int primary key not null,
Nombres varchar(100) not null,
Apellidos varchar(100) not null,
Genero varchar(10) not null,
Email varchar(70),
Telefono varchar(20)
)
go

insert Estudiantes values
(1,'Pedro','Perez','Masculino','pedro.perez@universidad.com','1234-
5678')
insert Estudiantes values
(2,'Juan','Juarez','Masculino','juan.juarez@universidad.com','8765-
4321')
insert Estudiantes values
(3,'Ana','Ayala','Femenino','ana.ayala@universidad.com','1122-
3344')
insert Estudiantes values
(4,'Raul','Ramos','Masculino','raul.ramos@universidad.com','5566-
7788')
insert Estudiantes values
(5,'Rosa','Ramirez','Femenino','rosa.ramirez@universidad.com','1212
-3434')

select * from Estudiantes;