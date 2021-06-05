--CREACION DE BASE DE DATOS--

Create database Musica

USE Musica;
GO

--CREACION DE TABLAS--

create table Generos
(codigo_genero int not null primary key,
nombre_genero nvarchar(100) not null);

create table Canciones
(codigo_cancion int identity not null primary key,
nombre_artista nvarchar(100) not null, 
nombre_cancion nvarchar(100) not null,
anio_cancion int not null, 
codigo_genero int not null references Generos(codigo_genero));
--album_cancion nvarchar(100) not null)--

--VALORES INSERTADOS DE ENTRADA--

Insert into Generos(codigo_genero, nombre_genero) 
values(1, 'Salsa');

Insert into Generos(codigo_genero, nombre_genero) 
values(2, 'Rock');

Insert into Generos(codigo_genero, nombre_genero) 
values(3, 'Pop');

Insert into Canciones(nombre_artista, nombre_cancion, anio_cancion, codigo_genero) 
values('Lalo Rodriguez', 'Devorame otra vez', '1998', 1);

Insert into Canciones(nombre_artista, nombre_cancion, anio_cancion, codigo_genero) 
values('Eddie Santiago', 'Lluvia', '1988', 1);

Insert into Canciones(nombre_artista, nombre_cancion, anio_cancion, codigo_genero) 
values('Marc Anthony', 'Valió la pena', '2004', 1);

Insert into Canciones(nombre_artista, nombre_cancion, anio_cancion, codigo_genero) 
values('ACDC', 'Hells Bells', '1980', 2);

Insert into Canciones(nombre_artista, nombre_cancion, anio_cancion, codigo_genero) 
values('Guns N Roses', 'November Rain', '1991', 2);

Insert into Canciones(nombre_artista, nombre_cancion, anio_cancion, codigo_genero) 
values('Bon Jovi', 'Living on a Prayer', '1986', 2);

Insert into Canciones(nombre_artista, nombre_cancion, anio_cancion, codigo_genero) 
values('Aqua', 'Barbie Girl', '1997', 3);

Insert into Canciones(nombre_artista, nombre_cancion, anio_cancion, codigo_genero) 
values('The Pointer Sisters', 'Im so Excited', '1982', 3);

Insert into Canciones(nombre_artista, nombre_cancion, anio_cancion, codigo_genero) 
values('Michael Jackson', 'Bad', '1987', 3);

--CONSULTA DE VALORES--

select * from Generos;

select * from Canciones;