create or replace procedure registrar_pago (
p_id_cliente int, 
p_monto numeric)
language  plpgsql
as $$
declare 
v_exite_cliente boolean;
begin
	select exists (select 1 from clientes where id_cliente = p_id_cliente) into v_existe_cliente;
	if not v_exite_cliente then raise exception 'El cliente con id % no existe', p_id_cliente; end if;
	if p_monto <= 0 then raise exception 'el monto debe ser mayor a 0' end if;
	insert into pagos (fecha, id_alquiler, id_cliente, costotal, id_sucursal, ) values (now(), 1, p_id_cliente, p_monto, 1);

	commit;
	raise notice 'Pago registrado exitosamente para el cliente % por un monto de %', p_id_cliente, p_monto;
end;
end;
$$

