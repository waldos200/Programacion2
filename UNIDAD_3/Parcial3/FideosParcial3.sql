create database Parcial3
go

use Parcial3
go 

create table Fideos(Id int primary key not null, 
Nombre nvarchar(100) not null, 
Ingredientes nvarchar(1000) not null, 
Elaboracion nvarchar(2000) not null);

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (1, 'Fideuá', 
'300 gramos de fideos del nº 3,
12 gambas,
1 cebollas,
2 tomates,
4 dientes de ajo,
1 pimientos verdes,
pimentón dulce,
aceite,
sal,
pimienta', 
'1. Pica cebolla, pimiento y tomate: Pica la cebolla. Trocea pimiento y tomates. Pela las gambas. Sofríe las cabezas unos 3 minutos con un chorrito de aceite y retira.,
2. Prepara el sofrito: Marca las gambas 2 minutos y retira. Sofríe 5 minutos cebolla y pimiento y echa el tomate, otros 5 minutos. Añade las cabezas de gamba y presiona para que dejen el jugo. Echa una cucharadita de sal y una de pimentón. Remueve.,
3. Agrega el agua: Añade litro y medio de agua. Tapa y cuece 20 minutos a fuego medio. Mientras, en una paellera, sofríe los ajos enteros. Cuando estén dorados, echa en el caldo. ,
4. Dora los fideos: Dora los fideos unos 4 minutos sin que se quemen. Si alguno se te tostara mucho, retíralo.,
5. Cuece con el caldo: Cubre los fideos con el caldo preparado y cuece unos 10 minutos. Coloca las gambas por encima y deja reposar.,
6. Sirve con alioli: Puedes servir la fideuá con mayonesa o, mejor aún, con el tradicional "all i oli", en una salsera aparte o por encima, si estás seguro de que todos los comensales quieren.');

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
2. Sofríe la cebolla
Limpia el pimiento, lávalo y pártelo en daditos. Pela y pica los ajos y la cebolla. Sofríe esta en la misma cazuela de las costillas hasta que empiece a dorarse, removiendo. ,
3. Añade pimiento y tomate
Agrega el pimiento y prosigue la cocción unos minutos hasta que esté blandito. Añade el ajo y deja cocer unos minutos más. Incorpora los tomates pelados y troceados, 1 ramita de perejil picada y la hoja de laurel. Salpimienta, mezcla y dejar cocer hasta que se evapore el agua que suelta el tomate. ,
4. Vierte el brandy
Vierte el brandy y cuece unos 5 minutos para que reduzca el alcohol. Añade de nuevo las costillas y la butifarra, y remueve despacio. Incorpora el caldo caliente, cuece hasta que llegue a ebullición y déjalo unos 5 minutos más. ,
5. Agrega los fideos
Añade los fideos y cuécelos, a fuego fuerte, hasta que estén al dente, unos 7 o 10 minutos, siguiendo las instrucciones del envase. Tienen que quedar jugosos, no secos, pero no absorber todo el caldo. ,
6. Deja reposar
Apaga el fuego y deja reposar los fideos con la carne en la cazuela durante un par de minutos para que se mezclen los sabores. Sírvelos en el mismo recipiente o repártelos en 4 platos hondos, decorados con el perejil restante.');

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (3, 'Fideos a la cazuela', 
' 300 gramos de fideos gruesos,
 400 gramos de costillas de cerdo,
 100 gramos de guisantes,
 ½ pimiento rojo,
 1 cebolla,
 1 ñora,
 2 dientes de ajo,
 vino blanco,
 aceite,
 sal,
 pimienta', 
'1. Sofríe los ajos y la ñora:
Sofríe los ajos majados sin pelar 3 minutos y retira. Saltea ½ minuto la ñora y retira también. ,
2. Añade la costilla:
Salpimienta la costilla troceada y sofríela hasta que se dore y retira. Sofríe la cebolla picada 5 minutos y añade el pimiento troceado, otros 5 minutos. Incorpora la costilla y una copita de vino. ,
3. Deja reducir:
Deja reducir el líquido y cubre con litro y medio de agua. Cuece con los guisantes 10 minutos. ,
4. Echa la picada:
Retira las semillas de la ñora y pica con los ajos. Echa los fideos y la picada en la cazuela. Sala, tapa y cuece 10 minutos a fuego medio. ,
5. Sirve reposado:
Deja reposar unos minutos antes de servir para que los fideos absorban todo el sabor y el aroma.');

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (4, 'Fideuá con almeas y cigalas', 
' 500 gramos de fideos finos,
 400 gramos de almejas,
 8 cigalas,
 400 gramos de mejillones,
 1 cebolla,
 2 ajos,
 ½ limón,
 250 gramos de tomate frito,
 1,5 litros de caldo de pescado,
 1 cucharada de perejil picado,
 aceite,
 sal,
 pimienta', 
'1. Remoja las almejas:
Deja las almejas en remojo en agua fría con un puñado de sal durante 1 hora. Así expulsarán la posible arena que contengan. ,
2. Cuece los mejillones:
Limpia los mejillones, lávalos y cuécelos en agua con el zumo del limón hasta que se abran. Escúrrelos, desecha las valvas y reserva la carne. Escurre las almejas y cuécelas también hasta que se abran; resérvalas. ,
3. Rehoga la cebolla:
Pela la cebolla y pícala. Rehógala 7-8 minutos con aceite en la sartén o paellera donde vayas a hacer la fideuá y retírala. ,
4. Añade las cigalas:
Añade las cigalas, salpimiéntalas y saltéalas 2 minutos; resérvalas también. Lava los ajos y aplástalos ligeramente. Dóralos en la misma sartén y añade un poco más de aceite. ,
5. Sofríe los fideos:
Agrega los fideos y sofríelos 2 minutos. Vierte el caldo con el tomate frito y reincorpora la cebolla. Llévalo a ebullición y deja que cueza a fuego medio hasta que se consuma el líquido. ,
6. Agrega el marisco:
Si fuera preciso, agrega más caldo caliente. Antes de acabar, añade los mejillones, las almejas y las cigalas. Sirve con el perejil.');

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (5, 'Fideuá tradicional', 
' 400 gramos de fideos del nº 2,
 200 gramos de almeja,
 400 gramos de sepia,
 8 gambas,
 4 diente de ajo,
 1 pimiento verde,
 2 cucharadas de salsa de tomate,
 1,2 litros de caldo de pescado,
 azafrán unas hebras,
 aceite de oliva,
 sal', 
'Paso 1:
Confitar dos ajos con 100 ml de aceite durante 5 minutos a fuego lento. Verterlo todo sobre los fideos y hornearlos 15 minutos a 180° para dorarlos. Reservar. Dejar las almejas en remojo en agua con sal. Limpiar la sepia y cortarla en daditos. Picar el pimiento y los dientes de ajo restantes. ,
Paso 2:
Dorar las gambas en una sartén con cuatro cucharadas de aceite. Retirarlas y rehogar la sepia. Añadir el pimiento y el ajo picados, freírlos 5 minutos y agregar unas hebras de azafrán. Tostarlas unos segundos, removiendo, y verter la salsa de tomate. Cocinar 5 minutos a fuego lento. ,
Paso 3:
Añadir los fideos bien escurridos y las almejas, salar y verter el caldo caliente. Cocer 5 minutos a fuego lento, agregar las gambas y terminar la cocción en el horno, a 180°, durante 10 minutos, hasta que se haya absorbido todo el caldo. Dejar reposar unos minutos antes de servir.');

insert into Fideos(Id,Nombre,Ingredientes,Elaboracion) values (6, 'Fideos con almejas y setas', 
' 300 gramos de fideos gruesos,
 2 cebolla,
 200 gramos de almeja,
 200 gramos de seta,
 1 ramita de perejil,
 laurel,
 1,5 litros de caldo de verduras,
 3 cucharadas de aceite de oliva,
 azafrán,
 sal,
 pimienta', 
'Paso 1:
Dejar las almejas en remojo de agua salada 2 horas y enjuagarlas. ,
Paso 2:
Dejar las almejas en remojo de agua salada 2 horas y enjuagarlas. ,
Paso 3:
Limpiar las setas, lavarlas y cortarlas en láminas. Lavar y picar el perejil. Pelar y picar las cebollas y los ajos. Rehogar las primeras en el aceite 5 minutos. Añadir las setas y los ajos, y salpimentar. ,
Paso 4:
Limpiar las setas, lavarlas y cortarlas en láminas. Lavar y picar el perejil. Pelar y picar las cebollas y los ajos. Rehogar las primeras en el aceite 5 minutos. Añadir las setas y los ajos, y salpimentar.');

select * from Fideos