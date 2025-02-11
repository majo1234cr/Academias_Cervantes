use gestionacademias;

insert into usuario
values (1, 'Juan','Pérez','juan.perez@example.com','555-1234','Calle Falsa 123 Ciudad XYZ','1234 5678 9876','tarjeta de credito','pagado','activo','2025-01-01',null),
(2, 'María', 'González', 'maria.gonzalez@example.com', '555-5678', 'Av. Libertad 456, Ciudad ABC', '2345 6789 8765', 'tarjeta de debito', 'pendiente', 'inactivo_por_mora', '2025-01-01', null),
(3, 'Luis', 'Martínez', 'luis.martinez@example.com', '555-2345', 'Calle Sol 789, Ciudad DEF', '3456 7890 9876', 'tarjeta de credito', 'pagado', 'activo', '2025-01-01', null),
(4, 'Ana', 'López', 'ana.lopez@example.com', '555-6789', 'Calle Luna 101, Ciudad GHI', '4567 8901 2345', 'tarjeta de debito', 'pagado', 'activo', '2025-01-01', null),
(5, 'Pedro', 'Sánchez', 'pedro.sanchez@example.com', '555-3456', 'Av. Reforma 202, Ciudad JKL', '5678 9012 3456', 'tarjeta de credito', 'pagado', 'activo', '2025-01-01', null),
(6, 'Marta', 'Rodríguez', 'marta.rodriguez@example.com', '555-9876', 'Calle Viento 303, Ciudad MNO', '6789 0123 4567', 'tarjeta de credito', 'pagado', 'activo', '2025-01-01', null),
(7, 'Carlos', 'Fernández', 'carlos.fernandez@example.com', '555-4567', 'Av. Mar 404, Ciudad PQR', '7890 1234 5678', 'tarjeta de debito', 'pendiente', 'inactivo_por_mora', '2025-01-01', null),
(8, 'Laura', 'Díaz', 'laura.diaz@example.com', '555-8765', 'Calle Río 505, Ciudad STU', '8901 2345 6789', 'tarjeta de credito', 'pagado', 'activo', '2025-01-01', null),
(9, 'Jorge', 'Gómez', 'jorge.gomez@example.com', '555-5432', 'Calle Estrella 606, Ciudad VWX', '9012 3456 7890', 'tarjeta de debito', 'pagado', 'activo', '2025-01-01', null),
(10, 'Isabel', 'Ruiz', 'isabel.ruiz@example.com', '555-1239', 'Av. Norte 707, Ciudad YZA', '1234 2345 3456', 'tarjeta de credito', 'pagado', 'activo', '2025-01-01', null),
(11, 'Alberto', 'Martínez', 'alberto.martinez@example.com', '555-6543', 'Calle Flor 808, Ciudad BCD', '2345 6789 1234', 'tarjeta de debito', 'pagado', 'activo', '2025-01-01', null),
(12, 'Carmen', 'Torres', 'carmen.torres@example.com', '555-4321', 'Av. Primavera 909, Ciudad EFG', '3456 7890 1234', 'tarjeta de credito', 'pendiente', 'inactivo_por_mora', '2025-01-01', null),
(13, 'Roberto', 'Ramírez', 'roberto.ramirez@example.com', '555-5671', 'Calle Sol 010, Ciudad HIJ', '4567 8901 2345', 'tarjeta de credito', 'pagado', 'activo', '2025-01-01', null),
(14, 'Silvia', 'Fernández', 'silvia.fernandez@example.com', '555-2341', 'Av. Viento 303, Ciudad KLM', '5678 9012 3456', 'tarjeta de debito', 'pagado', 'activo', '2025-01-01', null),
(15, 'Francisco', 'Pérez', 'francisco.perez@example.com', '555-6783', 'Calle Cielo 707, Ciudad OPQ', '6789 0123 4567', 'tarjeta de credito', 'pagado', 'activo', '2025-01-01', null);

select * from academia;
Select * from nivel;

insert into clase (id_clase, id_academia, id_nivel, fecha_hora, duracion) values
(1, 1, 1, '2025-01-05 08:00:00', 60),
(2, 1, 2, '2025-01-06 09:00:00', 60),
(3, 1, 3, '2025-01-07 10:00:00', 60),
(4, 2, 1, '2025-01-08 11:00:00', 60),
(5, 2, 2, '2025-01-09 12:00:00', 60),
(6, 2, 3, '2025-01-10 13:00:00', 60),
(7, 3, 1, '2025-01-11 14:00:00', 60),
(8, 3, 2, '2025-01-12 15:00:00', 60),
(9, 3, 3, '2025-01-13 16:00:00', 60);

insert into registro_asistencia (id_registro, id_usuario, id_clase, tipo_evento, fecha_hora)
values
(1, 1, 1, 'ingreso', '2025-01-05 08:00:00'),
(2, 1, 1, 'salida', '2025-01-05 09:00:00'),
(3, 2, 2, 'ingreso', '2025-01-06 09:00:00'),
(4, 2, 2, 'salida', '2025-01-06 10:00:00'),
(5, 3, 3, 'ingreso', '2025-01-07 10:00:00'),
(6, 3, 3, 'salida', '2025-01-07 11:00:00'),
(7, 4, 4, 'ingreso', '2025-01-08 11:00:00'),
(8, 4, 4, 'salida', '2025-01-08 12:00:00'),
(9, 5, 5, 'ingreso', '2025-01-09 12:00:00'),
(10, 5, 5, 'salida', '2025-01-09 13:00:00'),
(11, 6, 6, 'ingreso', '2025-01-10 13:00:00'),
(12, 6, 6, 'salida', '2025-01-10 14:00:00'),
(13, 7, 7, 'ingreso', '2025-01-11 14:00:00'),
(14, 7, 7, 'salida', '2025-01-11 15:00:00'),
(15, 8, 8, 'ingreso', '2025-01-12 15:00:00'),
(16, 8, 8, 'salida', '2025-01-12 16:00:00'),
(17, 9, 9, 'ingreso', '2025-01-13 16:00:00'),
(18, 9, 9, 'salida', '2025-01-13 17:00:00'),
(19, 10, 1, 'ingreso', '2025-01-05 08:00:00'),
(20, 10, 1, 'salida', '2025-01-05 09:00:00'),
(21, 11, 2, 'ingreso', '2025-01-06 09:00:00'),
(22, 11, 2, 'salida', '2025-01-06 10:00:00'),
(23, 12, 3, 'ingreso', '2025-01-07 10:00:00'),
(24, 12, 3, 'salida', '2025-01-07 11:00:00'),
(25, 13, 4, 'ingreso', '2025-01-08 11:00:00'),
(26, 13, 4, 'salida', '2025-01-08 12:00:00'),
(27, 14, 5, 'ingreso', '2025-01-09 12:00:00'),
(28, 14, 5, 'salida', '2025-01-09 13:00:00'),
(29, 15, 6, 'ingreso', '2025-01-10 13:00:00'),
(30, 15, 6, 'salida', '2025-01-10 14:00:00');

insert into tarifa (id_tarifa, id_academia, id_nivel, costo_hora, fecha_inicial_v, fecha_final_v)
values
(1, 1, 1, 50.00, '2025-01-01', '2025-12-31'),
(2, 1, 2, 60.00, '2025-01-01', '2025-12-31'),
(3, 1, 3, 70.00, '2025-01-01', '2025-12-31'),
(4, 2, 1, 55.00, '2025-01-01', '2025-12-31'),
(5, 2, 2, 65.00, '2025-01-01', '2025-12-31'),
(6, 2, 3, 75.00, '2025-01-01', '2025-12-31'),
(7, 3, 1, 60.00, '2025-01-01', '2025-12-31'),
(8, 3, 2, 70.00, '2025-01-01', '2025-12-31'),
(9, 3, 3, 80.00, '2025-01-01', '2025-12-31');

insert into pago (id_pago, id_usuario, monto, fecha_pago, tarjeta, metodo_pago, estado_pago)
values
(1, 1, 50.00, '2025-01-31', '1234 5678 9876', 'tarjeta de credito', 'pagado'),
(2, 2, 60.00, '2025-01-31', '2345 6789 8765', 'tarjeta de debito', 'pendiente'),
(3, 3, 70.00, '2025-01-31', '3456 7890 9876', 'tarjeta de credito', 'pagado'),
(4, 4, 55.00, '2025-01-31', '4567 8901 2345', 'tarjeta de debito', 'pagado'),
(5, 5, 60.00, '2025-01-31', '5678 9012 3456', 'tarjeta de credito', 'pagado'),
(6, 6, 70.00, '2025-01-31', '6789 0123 4567', 'tarjeta de credito', 'pagado'),
(7, 7, 55.00, '2025-01-31', '7890 1234 5678', 'tarjeta de debito', 'pendiente'),
(8, 8, 65.00, '2025-01-31', '8901 2345 6789', 'tarjeta de credito', 'pagado'),
(9, 9, 70.00, '2025-01-31', '9012 3456 7890', 'tarjeta de debito', 'pagado'),
(10, 10, 50.00, '2025-01-31', '1234 2345 3456', 'tarjeta de credito', 'pagado'),
(11, 11, 60.00, '2025-01-31', '2345 6789 1234', 'tarjeta de debito', 'pagado'),
(12, 12, 70.00, '2025-01-31', '3456 7890 1234', 'tarjeta de credito', 'pendiente'),
(13, 13, 55.00, '2025-01-31', '4567 8901 2345', 'tarjeta de credito', 'pagado'),
(14, 14, 65.00, '2025-01-31', '5678 9012 3456', 'tarjeta de debito', 'pagado'),
(15, 15, 70.00, '2025-01-31', '6789 0123 4567', 'tarjeta de credito', 'pagado');
