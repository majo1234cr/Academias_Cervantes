use gestionacademias;

-- Primera funcion --

DELIMITER $$
create function FN_CLASES_FECHA (P_NOMBRE_ACA varchar(100), 
								P_NOMBRE_NIVEL varchar(100),
                                P_FECHA_HORA_I date,
                                P_FECHA_HORA_F date)
returns int
deterministic
begin

declare V_RESULTADO int;

select COUNT(*)
into V_RESULTADO
from clase c
left join academia a on a.id_academia = c.id_academia
left join nivel n on n.id_nivel =c.id_nivel
where a.nombre_academia = P_NOMBRE_ACA
and n.nombre_nivel = P_NOMBRE_NIVEL
and c.fecha_hora between  P_FECHA_HORA_I and P_FECHA_HORA_F;

return V_RESULTADO;
end $$ 
DELIMITER ;

select FN_CLASES_FECHA ('futbol', 'senior', '2025-01-01', '2025-01-31');

-- Segunda funcion --

DELIMITER $$
create function FN_CANT_PAGOS_EST (P_ESTADO_PAGO enum('pendiente', 'pagado'), 
								P_FECHA_I date,
                                P_FECHA_F date)
returns int
deterministic
begin

declare V_RESULTADO int;

select COUNT(*)
into V_RESULTADO
from pago 
where estado_pago = P_ESTADO_PAGO
and fecha_pago between  P_FECHA_I and P_FECHA_F;

return V_RESULTADO;
end $$ 
DELIMITER ;

select  FN_CANT_PAGOS_EST ('pendiente', '2025-01-01', '2025-01-31');