create table sucursal (
id_sucursal serial primary key,
nombre varchar(100),
direccion varchar(100),
ciudad varchar(100),
pais varchar(100)
);

create table clientes (
id_cliente serial primary key,
nombre varchar(20),
apellido varchar(20),
telefono bigint,
direccion varchar(100),
id_sucursal int not null,
CONSTRAINT id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal)
);

create table categoria ( 
id_categoria serial primary key,
nombre varchar(100)
);


create table peliculas( 
id_pelicula serial primary key,
titulo varchar(100),
genero_id int,
director varchar(100),
anno_lanzamiento date,
disponibilidad int,
precio int,
id_sucursal int not null,
CONSTRAINT id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal)

);


create table historial_alquier  (
id_alquiler serial primary key,
id_cliente int not null,
id_pelicula int not null,
fecha_inicio date,
fecha_devolucion date,
id_sucursal int not null,
CONSTRAINT id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente),
CONSTRAINT id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.peliculas(id_pelicula),
CONSTRAINT id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal)
);


create table pagos(
id_pago serial primary key,
fecha date, 
id_alquiler int,
id_cliente int,
costotoal int,
id_sucursal int not null,
CONSTRAINT id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal)
);

