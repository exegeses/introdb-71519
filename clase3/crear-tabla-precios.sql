create table precios
(
    id tinyint unsigned auto_increment primary key not null,
    aproximado float not null,
    exacto decimal(10,2) not null
);

insert into precios
    values
        ( DEFAULT, 96.5, 96.5 ),
        ( DEFAULT, 86.7, 86.7 ),
        ( DEFAULT, 34.7, 34.7 ),
        ( DEFAULT, 7.5, 7.5 ),
        ( DEFAULT, 50, 50 ),
        ( DEFAULT, 60.22, 60.22 );

SELECT sum(aproximado), sum(exacto)
    FROM precios;