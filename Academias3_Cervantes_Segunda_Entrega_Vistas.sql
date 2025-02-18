use gestionacademias;

-- Primera vista --

create or replace view vista_usu_inactivos_mora_pago as
select
    u.id_usuario,
    CONCAT(u.nombre, ' ', u.apellido) as nombre_completo,
    u.email,
    u.estado_usuario,
    p.monto as ultimo_pago,
    p.fecha_pago as fecha_ultimo_pago,
    p.estado_pago as estado_pago
from usuario u
Left join pago p on u.id_usuario = p.id_usuario
where u.estado_usuario = 'inactivo_por_mora'
order by p.fecha_pago desc;

select * from vista_usu_inactivos_mora_pago;

-- Segunda vista --

create or replace view vista_clases_progr as
select
    a.nombre_academia as academia,
    n.nombre_nivel as nivel,
    c.fecha_hora as fecha_hora,
    c.duracion as duracion
from clase c
left join academia a on c.id_academia = a.id_academia
left join nivel n on c.id_nivel = n.id_nivel
where c.fecha_hora >= curdate()
order by c.fecha_hora;

select * from vista_clases_progr;

-- tercera vista --

create view vista_registro_asist as
select
    ra.id_registro,
    u.id_usuario,
    CONCAT(u.nombre, ' ', u.apellido) as nombre_usuario,
    c.id_clase,
    c.fecha_hora as fecha_clase,
    ra.tipo_evento,
    ra.fecha_hora as fecha_evento
from registro_asistencia ra
left join usuario u on ra.id_usuario = u.id_usuario
left join clase c on ra.id_clase = c.id_clase
where ra.tipo_evento = 'salida'
Order by ra.fecha_hora desc;

select * from vista_registro_asist;