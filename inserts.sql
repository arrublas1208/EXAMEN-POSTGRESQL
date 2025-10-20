insert into sucursal ( nombre, direccion, ciudad, pais) values 
('principal', 'calle 6', 'cali', 'colombia'), 
('principal1', 'calle 7', 'cali', 'colombia'),
('principal2', 'calle 8', 'bucaramanga', 'colombia'),
('principal3', 'calle 9', 'bucaramanga', 'colombia'),
('principal4', 'calle 10', 'giron', 'colombia'),

INSERT INTO clientes (nombre, apellido, telefono, direccion, id_sucursal) VALUES
('Juan','montoya', 3108051310, 'calle 1', 1),
('lucas','mantilla', 3108051311, 'calle 2', 1),
('pedro','aquino', 3108051312, 'calle 3', 1),
('judas','ardila', 3108051313, 'calle 4', 1),
('miguel','lopez', 3108051314, 'calle 5', 1),
('rupertro','gutierrez', 3108051315, 'calle 6', 1),
('nicolas','dominguez', 3108051316, 'calle 7', 1),
('sebastian','gutierrez', 3108051317, 'calle 8', 1),
('angelo','Paez', 3108051318, 'calle 9', 1),
('luna','Perez', 3108051319, 'calle 10', 1);

insert into categoria (nombre) values ('terror');
insert into categoria (nombre) values ('ficcion');
insert into categoria (nombre) values ('aventura');



insert into peliculas (titulo, genero_id, director, anno_lanzamiento, disponibilidad, precio, id_sucursal) values
('Casa terror 1', 1, 'director1', '2021-01-01', 1, 20000, 1),
('Casa terror 2', 1, 'director1', '2022-01-01', 1, 20000, 1),
('Casa terror 3', 1, 'director1', '2023-01-01', 1, 20000, 1),
('Casa terror 4', 1, 'director1', '2024-01-01', 1, 20000, 1),
('Casa terror 5', 1, 'director1', '2025-01-01', 1, 20000, 1),
('Buscando a nemo 1', 2, 'director2', '2021-01-01', 1, 20000, 1),
('Buscando a nemo 2', 2, 'director2', '2022-01-01', 1, 20000, 1),
('Buscando a nemo 3', 2, 'director2', '2023-01-01', 1, 20000, 1),
('Buscando a nemo 4', 2, 'director2', '2024-01-01', 1, 20000, 1),
('Buscando a nemo 5', 2, 'director2', '2025-01-01', 1, 20000, 1),
('hora de aventura 1', 3, 'director3', '2021-01-01', 1, 20000, 1),
('hora de aventura 1', 3, 'director3', '2022-01-01', 1, 20000, 1),
('hora de aventura 1', 3, 'director3', '2023-01-01', 1, 20000, 1),
('hora de aventura 1', 3, 'director3', '2024-01-01', 1, 20000, 1),
('hora de aventura 1', 3, 'director3', '2025-01-01', 1, 20000, 1);

insert into historial_alquier (id_cliente, id_pelicula, fecha_inicio, fecha_devolucion, id_sucursal) values
(1, 7, '2025-01-01', '2025-01-07', 1),
(1, 7, '2025-01-01', '2025-01-07', 1),
(1, 8, '2025-01-01', '2025-01-07', 1),
(1, 9, '2025-01-01', '2025-01-07', 1),
(1, 10, '2025-01-01', '2025-01-07', 1),
(1, 11, '2025-01-01', '2025-01-07', 1),
(1, 12, '2025-01-01', '2025-01-07', 1),
(1, 13, '2025-01-01', '2025-01-07', 1),
(1, 14, '2025-01-01', '2025-01-07', 1),
(1, 15, '2025-01-01', '2025-01-07', 1);


insert into pagos (fecha, id_alquiler, id_cliente, costotoal, id_sucursal) values 
('2025-10-20', 1, 7, 20000, 1),
('2025-10-21', 2, 8, 20000, 1),
('2025-10-22', 3, 9, 20000, 1),
('2025-10-23', 4, 10, 20000, 1),
('2025-10-24', 5, 7, 20000, 1),
('2025-10-25', 6, 8, 20000, 1),
('2025-10-26', 7, 9, 20000, 1),
('2025-10-27', 8, 10, 20000, 1),
('2025-10-28', 9, 7, 20000, 1),
('2025-10-29', 10, 9, 20000, 1);



