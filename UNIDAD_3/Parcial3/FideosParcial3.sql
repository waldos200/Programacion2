create database Parcial3
go

use Parcial3
go 

create table Fideos(Id int primary key not null, 
Nombre nvarchar(100) not null, 
Ingredientes nvarchar(1000) not null, 
Elaboracion nvarchar(2000) not null);

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (1, 'Fideu�', 
'300 gramos de fideos del n� 3,
12 gambas,
1 cebollas,
2 tomates,
4 dientes de ajo,
1 pimientos verdes,
piment�n dulce,
aceite,
sal,
pimienta', 
'1. Pica cebolla, pimiento y tomate: Pica la cebolla. Trocea pimiento y tomates. Pela las gambas. Sofr�e las cabezas unos 3 minutos con un chorrito de aceite y retira.,
2. Prepara el sofrito: Marca las gambas 2 minutos y retira. Sofr�e 5 minutos cebolla y pimiento y echa el tomate, otros 5 minutos. A�ade las cabezas de gamba y presiona para que dejen el jugo. Echa una cucharadita de sal y una de piment�n. Remueve.,
3. Agrega el agua: A�ade litro y medio de agua. Tapa y cuece 20 minutos a fuego medio. Mientras, en una paellera, sofr�e los ajos enteros. Cuando est�n dorados, echa en el caldo. ,
4. Dora los fideos: Dora los fideos unos 4 minutos sin que se quemen. Si alguno se te tostara mucho, ret�ralo.,
5. Cuece con el caldo: Cubre los fideos con el caldo preparado y cuece unos 10 minutos. Coloca las gambas por encima y deja reposar.,
6. Sirve con alioli: Puedes servir la fideu� con mayonesa o, mejor a�n, con el tradicional "all i oli", en una salsera aparte o por encima, si est�s seguro de que todos los comensales quieren.');

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (2, 'Fideos a la cazuela con costilla de cerdo', 
'250 gramos de fideos perla,
 1 litro de caldo de pollo,
 300 gramos de costillas de cerdo troceadas,
 2 butifarras,
 1 cebolla,
 1 pimiento verde,
 2 tomates maduros,
 2 dientes de ajo,
 2 ramitas de perejil,
 1 hoja de laurel,
 100 mililitros de brandy,
 sal,
 pimienta,
 aceite de oliva', 
'1. Dora la carne:
Salpimienta las costillas de cerdo. Parte las butifarras en rodajas. Dora ambas en una cazuela de barro con 3 cucharadas de aceite y retira.,
2. Sofr�e la cebolla
Limpia el pimiento, l�valo y p�rtelo en daditos. Pela y pica los ajos y la cebolla. Sofr�e esta en la misma cazuela de las costillas hasta que empiece a dorarse, removiendo. ,
3. A�ade pimiento y tomate
Agrega el pimiento y prosigue la cocci�n unos minutos hasta que est� blandito. A�ade el ajo y deja cocer unos minutos m�s. Incorpora los tomates pelados y troceados, 1 ramita de perejil picada y la hoja de laurel. Salpimienta, mezcla y dejar cocer hasta que se evapore el agua que suelta el tomate. ,
4. Vierte el brandy
Vierte el brandy y cuece unos 5 minutos para que reduzca el alcohol. A�ade de nuevo las costillas y la butifarra, y remueve despacio. Incorpora el caldo caliente, cuece hasta que llegue a ebullici�n y d�jalo unos 5 minutos m�s. ,
5. Agrega los fideos
A�ade los fideos y cu�celos, a fuego fuerte, hasta que est�n al dente, unos 7 o 10 minutos, siguiendo las instrucciones del envase. Tienen que quedar jugosos, no secos, pero no absorber todo el caldo. ,
6. Deja reposar
Apaga el fuego y deja reposar los fideos con la carne en la cazuela durante un par de minutos para que se mezclen los sabores. S�rvelos en el mismo recipiente o rep�rtelos en 4 platos hondos, decorados con el perejil restante.');

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (3, 'Fideos a la cazuela', 
' 300 gramos de fideos gruesos,
 400 gramos de costillas de cerdo,
 100 gramos de guisantes,
 � pimiento rojo,
 1 cebolla,
 1 �ora,
 2 dientes de ajo,
 vino blanco,
 aceite,
 sal,
 pimienta', 
'1. Sofr�e los ajos y la �ora:
Sofr�e los ajos majados sin pelar 3 minutos y retira. Saltea � minuto la �ora y retira tambi�n. ,
2. A�ade la costilla:
Salpimienta la costilla troceada y sofr�ela hasta que se dore y retira. Sofr�e la cebolla picada 5 minutos y a�ade el pimiento troceado, otros 5 minutos. Incorpora la costilla y una copita de vino. ,
3. Deja reducir:
Deja reducir el l�quido y cubre con litro y medio de agua. Cuece con los guisantes 10 minutos. ,
4. Echa la picada:
Retira las semillas de la �ora y pica con los ajos. Echa los fideos y la picada en la cazuela. Sala, tapa y cuece 10 minutos a fuego medio. ,
5. Sirve reposado:
Deja reposar unos minutos antes de servir para que los fideos absorban todo el sabor y el aroma.');

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (4, 'Fideu� con almeas y cigalas', 
' 500 gramos de fideos finos,
 400 gramos de almejas,
 8 cigalas,
 400 gramos de mejillones,
 1 cebolla,
 2 ajos,
 � lim�n,
 250 gramos de tomate frito,
 1,5 litros de caldo de pescado,
 1 cucharada de perejil picado,
 aceite,
 sal,
 pimienta', 
'1. Remoja las almejas:
Deja las almejas en remojo en agua fr�a con un pu�ado de sal durante 1 hora. As� expulsar�n la posible arena que contengan. ,
2. Cuece los mejillones:
Limpia los mejillones, l�valos y cu�celos en agua con el zumo del lim�n hasta que se abran. Esc�rrelos, desecha las valvas y reserva la carne. Escurre las almejas y cu�celas tambi�n hasta que se abran; res�rvalas. ,
3. Rehoga la cebolla:
Pela la cebolla y p�cala. Reh�gala 7-8 minutos con aceite en la sart�n o paellera donde vayas a hacer la fideu� y ret�rala. ,
4. A�ade las cigalas:
A�ade las cigalas, salpimi�ntalas y salt�alas 2 minutos; res�rvalas tambi�n. Lava los ajos y apl�stalos ligeramente. D�ralos en la misma sart�n y a�ade un poco m�s de aceite. ,
5. Sofr�e los fideos:
Agrega los fideos y sofr�elos 2 minutos. Vierte el caldo con el tomate frito y reincorpora la cebolla. Ll�valo a ebullici�n y deja que cueza a fuego medio hasta que se consuma el l�quido. ,
6. Agrega el marisco:
Si fuera preciso, agrega m�s caldo caliente. Antes de acabar, a�ade los mejillones, las almejas y las cigalas. Sirve con el perejil.');

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (5, 'Fideu� tradicional', 
' 400 gramos de fideos del n� 2,
 200 gramos de almeja,
 400 gramos de sepia,
 8 gambas,
 4 diente de ajo,
 1 pimiento verde,
 2 cucharadas de salsa de tomate,
 1,2 litros de caldo de pescado,
 azafr�n unas hebras,
 aceite de oliva,
 sal', 
'Paso 1:
Confitar dos ajos con 100 ml de aceite durante 5 minutos a fuego lento. Verterlo todo sobre los fideos y hornearlos 15 minutos a 180� para dorarlos. Reservar. Dejar las almejas en remojo en agua con sal. Limpiar la sepia y cortarla en daditos. Picar el pimiento y los dientes de ajo restantes. ,
Paso 2:
Dorar las gambas en una sart�n con cuatro cucharadas de aceite. Retirarlas y rehogar la sepia. A�adir el pimiento y el ajo picados, fre�rlos 5 minutos y agregar unas hebras de azafr�n. Tostarlas unos segundos, removiendo, y verter la salsa de tomate. Cocinar 5 minutos a fuego lento. ,
Paso 3:
A�adir los fideos bien escurridos y las almejas, salar y verter el caldo caliente. Cocer 5 minutos a fuego lento, agregar las gambas y terminar la cocci�n en el horno, a 180�, durante 10 minutos, hasta que se haya absorbido todo el caldo. Dejar reposar unos minutos antes de servir.');

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (6, 'Fideos con almejas y setas', 
' 300 gramos de fideos gruesos,
 2 cebolla,
 200 gramos de almeja,
 200 gramos de seta,
 1 ramita de perejil,
 laurel,
 1,5 litros de caldo de verduras,
 3 cucharadas de aceite de oliva,
 azafr�n,
 sal,
 pimienta', 
'Paso 1:
Dejar las almejas en remojo de agua salada 2 horas y enjuagarlas. ,
Paso 2:
Dejar las almejas en remojo de agua salada 2 horas y enjuagarlas. ,
Paso 3:
Limpiar las setas, lavarlas y cortarlas en l�minas. Lavar y picar el perejil. Pelar y picar las cebollas y los ajos. Rehogar las primeras en el aceite 5 minutos. A�adir las setas y los ajos, y salpimentar. ,
Paso 4:
Limpiar las setas, lavarlas y cortarlas en l�minas. Lavar y picar el perejil. Pelar y picar las cebollas y los ajos. Rehogar las primeras en el aceite 5 minutos. A�adir las setas y los ajos, y salpimentar.');

select * from Fideos