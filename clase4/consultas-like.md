# Consultas de coincidencia

> Las consultas de coincidencia nos van a servir para buscar  información que vamos a filtrar para que contenga una cadena de caractáres
> Eso quiere decir que como filtro vamos a explicitar que contenga una cadena de caractéres

> Traer Nombre del producto, precio del producto y descripción del producto
> que contenga la palabra 'bluetooth' en la columna descripcion.

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdDescripcion LIKE '%bluetooth%'; 

> Utilizamos la palabra reservada **LIKE** 
> (reemplazando el **=**) 
> en combinación con el carácter de **%** porcentaje 
> como una especie de comodín que podría representar 1 (uno), varios hasta ningún carácter


> comodín de un solo carácter **_** (guión bajo o underscore)

    SELECT * FROM personas  
      WHERE dni LIKE '3574195_'

> Podemos utilizar el carácter **_** (guión bajo o underscore)como comodín de un solo carácter
