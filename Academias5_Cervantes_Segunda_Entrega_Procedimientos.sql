use gestionacademias;

-- Primer procedimiento --

DELIMITER $$
create procedure SP_EST_P_EST_U (in P_NOMBRE varchar(100),
                                in P_APELLIDO varchar(100),
                                in P_EMAIL varchar(300), 
								out P_ESTADO_P enum('pendiente','pagado'),
                                out P_ESTADO_U  enum ('activo', 'inactivo_por_mora', 'inactivo_por_retiro'))
begin

select
estado_pago,
estado_usuario 
into 
P_ESTADO_P,
P_ESTADO_U 
from usuario 
where nombre = P_NOMBRE
and apellido = P_APELLIDO
and email= P_EMAIL;

end $$ 
DELIMITER ;

call SP_EST_P_EST_U('Juan','Pérez','juan.perez@example.com', @P_ESTADO_P, @P_ESTADO_U);

select @P_ESTADO_P, @P_ESTADO_U;

-- segundo procedimiento --

DELIMITER $$
create procedure SP_TARIFAS (in P_ID_ACADEMIA int,
							in P_ID_NIVEL int,
							out P_COSTO_HORA decimal(10,2),
							out P_FECHA_INICIAL_V date,
							out P_FECHA_FINAL_V date)
begin

select
costo_hora,
fecha_inicial_v,
fecha_final_v
into 
P_COSTO_HORA,
P_FECHA_INICIAL_V,
P_FECHA_FINAL_V
from tarifa
where id_academia =  P_ID_ACADEMIA
and id_nivel =  P_ID_NIVEL
order by fecha_final_v desc
limit 1;

end $$ 
DELIMITER ;

call  SP_TARIFAS (1,2, @P_COSTO_HORA, @P_FECHA_INICIAL_V,@P_FECHA_FINAL_V);

select @P_COSTO_HORA, @P_FECHA_INICIAL_V,@P_FECHA_FINAL_V;
