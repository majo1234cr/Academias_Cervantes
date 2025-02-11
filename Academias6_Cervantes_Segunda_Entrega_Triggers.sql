-- Triggers -- 

create table log_usuario
(id_log int auto_increment,
nombre_accion varchar(50), 
nombre_tabla varchar(50),
usuario_mod varchar(100), 
fecha_mod datetime,
primary key (id_log));

create table log2_usuario
(id_log2  int auto_increment,
modificacion varchar(300),
nombre_accion varchar(50), 
nombre_tabla varchar(50),
usuario_mod varchar(100), 
fecha_mod datetime,
primary key (id_log2));

update usuario
set
    estado_pago = 'pagado'
where id_usuario = 1;

-- Primer trigger --

DELIMITER %%
create trigger trg2_log_usuario after update on usuario
for each row 
begin
insert into log2_usuario (modificacion, nombre_accion, nombre_tabla, usuario_mod, fecha_mod)
values (concat(new.estado_pago, ',', old.estado_pago, ',', old.id_usuario), 'update', 'usuario', current_user(), now());

end %%

DELIMITER ;

select * from log2_usuario;

-- Segundo trigger -- 
DELIMITER %%
create trigger trg_log_usuario after update on usuario
for each row 
begin
insert into log_usuario (nombre_accion, nombre_tabla, usuario_mod, fecha_mod)
values ('update', 'usuario', current_user(), now());

end %%

DELIMITER ;

select * from log_usuario;

