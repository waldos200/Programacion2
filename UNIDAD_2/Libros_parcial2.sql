create database Libros_parcial2
go 

use Libros_parcial2
go

create table Libros(IDLibro int identity not null primary key, Nombre nvarchar(50) not null, Precio money not null, Existencia int not null);

insert into Libros(Nombre,Precio, Existencia) values('Diario de un chico en apuros', 12.50, 10);
insert into Libros(Nombre,Precio, Existencia) values('Harry Potter y la piedra filosofal', 20.00, 30);

create procedure spAgregarLibro
@Nombre nvarchar(50),@Precio money,
@Existencia int,
@IDLibro int out
as
begin
insert into Libros values (@Nombre, @Precio, @Existencia)
select @IDLibro = SCOPE_IDENTITY()
end
go

Create procedure spInventario
as
begin
select * from Libros
end

Create procedure spLibroPorId @Idlibro int
as 
begin
select * from Libros where IDLibro = @Idlibro
end

Create procedure spEliminarLibro @IdLibro int
as 
begin
delete from Libros where IDLibro = @IdLibro
end

select * from Libros