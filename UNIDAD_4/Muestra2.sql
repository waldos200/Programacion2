create database Muestra2
go

use Muestra2
go

create table Departamentos (idDept int identity primary key not null, 
Departamento nvarchar(100) not null, 
Ubicacion nvarchar(100) not null);

create table Empleados (idEmp int identity primary key not null, 
Nombre nvarchar(100) not null, 
Apellido nvarchar(100) not null,
Genero nvarchar(50) not null,
Salario money not null,
idDept int not null references Departamentos(idDept));

insert into Departamentos(Departamento, Ubicacion) values ('Tecnología', 'Costa Rica');
insert into Departamentos(Departamento, Ubicacion) values ('Recursos Humaos', 'Guatemala');
insert into Departamentos(Departamento, Ubicacion) values ('Finanzas', 'El Salvador');

insert into Empleados(Nombre, Apellido, Genero, Salario, idDept) values ('Marcos', 'Ayala', 'Masculino', 900.00, 1);
insert into Empleados(Nombre, Apellido, Genero, Salario, idDept) values ('Marta', 'Villalta', 'Femenino', 800.00, 2);
insert into Empleados(Nombre, Apellido, Genero, Salario, idDept) values ('Pedro', 'Bonilla', 'Masculino', 700.00, 3);
insert into Empleados(Nombre, Apellido, Genero, Salario, idDept) values ('Katia', 'López', 'Femenino', 750.00, 3);
insert into Empleados(Nombre, Apellido, Genero, Salario, idDept) values ('Antonio', 'Cabrera', 'Masculino', 850.00, 2);
insert into Empleados(Nombre, Apellido, Genero, Salario, idDept) values ('Juana', 'Ramírez', 'Femenino', 950.00, 1);

select * from Departamentos
select * from Empleados

exec sp_executesql N'SELECT [t0].[idEmp], [t0].[Nombre], [t0].[Apellido], [t0].[Genero], [t0].[Salario], [t0].[idDept]
FROM [dbo].[Empleados] AS [t0]
WHERE [t0].[Genero] = @p0
ORDER BY [t0].[Salario] DESC',N'@p0 nvarchar(4000)',@p0=N'Masculino'

create procedure obtenerEmpleado
as
begin
select idEmp, Nombre, Apellido, Genero, Salario, idDept
from Empleados
end

-- INSERTAR
create procedure insertarEmpleado
@idEmp int,
@Nombre nvarchar(50),
@Apellido nvarchar(50),
@Genero nvarchar(50),
@Salario numeric(7,2),
@idDept int
as
begin
insert into Empleados(idEmp, Nombre, Apellido, Genero, Salario, idDept) values (@idEmp, @Nombre, @Apellido, @Genero, @Salario, @idDept)
end

-- ACTUALIZAR
create procedure actualizarEmpleado
@idEmp int,
@Nombre nvarchar(50),
@Apellido nvarchar(50),
@Genero nvarchar(50),
@Salario numeric(7,2),
@idDept int
as
begin
update Empleados set 
Nombre = @Nombre,
Apellido = @Apellido,
Genero = @Genero,
Salario = @Salario,
idDept = @idDept 
where idEmp = @idEmp
end

-- BORRAR
create procedure borrarEmpleado
@idEmp int
as
begin
delete Empleados where idEmp = @idEmp
end

create procedure EmpleadosPorDepto
@idDept int,
@Departamento nvarchar(50) out
as
begin
select @Departamento = Departamento
from Departamentos where idDept = @idDept
select * from Empleados where idDept = @idDept
end

