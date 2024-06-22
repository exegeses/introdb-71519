# Consultas en SQL

## Consultas a servidor de bases de datos

    -- listar todas las bases de datos  
    SHOW DATABASES;  

    -- Listar las tablas dentro de una base de datos  
    SHOW TABLES;  

    -- Mostrar la estructura de una tabla    
    DESCRIBE nombreTabla;

> La palabra reservada más importante o al menos la más utilizada para consultas es la palabra **SELECT**

    -- Mostrar la base de datos activa  
    SELECT DATABASE();  

## Consultas a tablas dentro de una base de datos

> Para realizar consultas a una tabla 
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**  

    SELECT * FROM nombreTabla;  
    SELECT * FROM regiones;  
    SELECT * FROM destinos;  

> Cuándo hacemos select * estamos trayendo los datos de todas las columnas de una tabla. 
> Si queremos traer los datos de **algunas** columnas de una tabla debemos mencionar dichas columnas separadas por comas (luego de select)

    SELECT nombreColumna, nombreColumna  
      FROM nombreTabla;  

    SELECT aeropuerto, precio   
      FROM destinos;  

### Order de resultados
> Para ordenar los resultados de una consulta 
> utilizamos **ORDER BY** 

    SELECT * FROM regiones  
      ORDER BY idRegion;  

    SELECT * FROM personas  
      order by apellido;

    SELECT aeropuerto, precio
      FROM destinos
      ORDER BY idRegion, precio;

### Filtrado de resultados

> Filtrar resultados de una consulta significa traer 
> solamente los registros que cumplan con una condición nada

> Para implementar un filtro 
> utilizamos la palabra reservada **WHERE** 
> seguida de una condición

    SELECT nombreCampo, nombreCampo  
      FROM nombreTabla  
      WHERE condicion;  

> Traer todos los destinos con un precio hasta 8000

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio <= 8000;  

> Traer todos los destinos con un precio entre 6600 y 8000

    SELECT aeropuerto, precio    
      FROM destinos  
      WHERE precio >= 6600  
        AND precio <= 8000;

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio BETWEEN 6600 AND 8000;

> Traer todos los destinos de la región 5

    SELECT aeropuerto, precio    
    FROM destinos  
    WHERE idRegion = 5;  

> Traer todos los destinos de la regiones 5 y 7

    SELECT aeropuerto, precio    
    FROM destinos  
    WHERE idRegion = 5  
      OR  idRegion = 7;  

    SELECT aeropuerto, precio    
    FROM destinos  
    WHERE idRegion IN( 5, 7 );  
