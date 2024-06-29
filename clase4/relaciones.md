# Relaciones entre tablas

> Si queremos consultar datos de dos o más tablas 
> tenemos dos técnicas para lograrlo
 
## 1.- Table Relation
> La técnica **table relation** se logra mencionando en el listado de las tablas ( después del **FROM**) 
> todas las tablas necesarias para la consulta separadas con comas.
> Y luego mediante un filtro (**WHERE**) 
> igualamos la columna en común
> O sea que vamos a igualar la clave foránea de la primera tabla con la clave primaria de la tabla relacionada

> Sintáxis: 

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

> Ejemplo práctico:

    SELECT aeropuerto, precio, nombre  
      FROM destinos, regiones  
      WHERE destinos.idRegion = regiones.idRegion;  

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca; 

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;


## 2.- JOIN 
