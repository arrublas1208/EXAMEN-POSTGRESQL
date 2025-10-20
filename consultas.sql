-- 1.

select s.nombre as sucursal, sum(costotoal) as ingresos
from pagos p
join sucursal s on p.id_sucursal = s.id_sucursal
where p.fecha > current_date - interval '1 month'
group by s.nombre;

-- 2.

select p.id_cliente, c.nombre, sum(p.costotoal) as monto
from pagos p
join clientes c on p.id_cliente = c.id_cliente
group by p.id_cliente, c.nombre
order by monto desc
limit 1;


-- 3. 

create view vista_precio_categorias as
select c.nombre as categoria, c.id_categoria
from historial_alquier ha 
join peliculas p on ha.id_pelicula = p.id_pelicula 
join categoria c on p.genero_id = c.id_categoria 

create view vista_total_categoria as 
select categoria, count(categoria) as cuenta
from vista_precio_categorias
group by categoria


select * 
from vista_total_categoria;

select categoria, (sum(cuenta) / cuenta) as porcentaje 
from vista_total_categoria
group by categoria;


-- 4. 

select sum(id_alquiler) as cantidad_alquiler,  s.nombre as sucursal
from historial_alquier ha 
join sucursal s on ha.id_sucursal = s.id_sucursal 
group by s.nombre
order by desc;

-- 5
select id_pelicula, titulo, c.nombre as genero, p.precio
from peliculas p 
join categoria c on p.genero_id = c.id_categoria 
where disponibilidad = 1;

-- 6

select c.nombre, ha.id_alquiler, ha.fecha_inicio, ha.fecha_devolucion, p.titulo as pelicula 
from historial_alquier ha 
join clientes c on ha.id_cliente = c.id_cliente 
join peliculas p on ha.id_pelicula = p.id_pelicula 
where ha.id_cliente = 1;

-- 7

select titulo as nombre_pelicula, p.precio
from peliculas p 
where p.precio > 10000


-- 8. 

select p.titulo, p.anno_lanzamiento 
from peliculas p 
where p.disponibilidad = 1 and p.anno_lanzamiento  > current_date - interval '5 year'
order by anno_lanzamiento asc;






