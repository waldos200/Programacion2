create database Ejemplo2
go 

use Ejemplo2
go

create table Empleados(IDEmp int identity not null primary key, Nombres nvarchar(50) not null, Apellidos nvarchar(50) not null, Genero nvarchar(10) not null, Salario decimal(7,2) not null);

insert into Empleados(Nombres,Apellidos,Genero,Salario) values('Pedro', 'Pérez', 'Masculino', 2345.32);
insert into Empleados(Nombres,Apellidos,Genero,Salario) values('Juan', 'Juárez', 'Masculino', 1532.87);
insert into Empleados(Nombres,Apellidos,Genero,Salario) values('Ana', 'Ayala', 'Femenino', 3145.06);
insert into Empleados(Nombres,Apellidos,Genero,Salario) values('Raúl', 'Ramos', 'Masculino', 945.64);
insert into Empleados(Nombres,Apellidos,Genero,Salario) values('Rosa', 'Ramírez', 'Femenino', 1293.85);
insert into Empleados(Nombres,Apellidos,Genero,Salario) values('Rebeca', 'Rodríguez', 'Femenino', 1828.51);

select * from Empleados; 

create procedure spAgregarEmpleado
@Nombres nvarchar(50),@Apellidos nvarchar (50),
@Genero nvarchar (10),
@Salario decimal(7,2),
@IDEmp int out
as
begin
insert into empleados values (@Nombres, @Apellidos, @Genero, @Salario)
select @IDEmp = SCOPE_IDENTITY()
end
go

declare @IDEmp int
execute spAgregarEmpleado 'Paola', 'Pineda', 'Femenino', 3269.73, @IDEmp out
print 'ID Empleado = ' + cast(@IDEmp as varchar(2))
