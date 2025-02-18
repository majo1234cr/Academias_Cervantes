create schema gestionacademias;
use gestionacademias;

create table usuario (
id_usuario int primary key,
nombre varchar(100) not null,
apellido varchar(100) not null,
email varchar(300) not null unique,
telefono varchar(20),
direccion text,
tarjeta varchar(20),
metodo_pago varchar(50),
estado_pago enum('pendiente','pagado') default 'pendiente',
estado_usuario enum ('activo', 'inactivo_por_mora', 'inactivo_por_retiro') default 'activo',
fecha_registro date not null,
fecha_retiro date,
constraint chk_estado_pago check (estado_pago in ('pendiente','pagado')),
constraint chk_estado_usuario check (estado_usuario in ('activo', 'inactivo_por_mora', 'inactivo_por_retiro'))
);

create table academia (
id_academia int auto_increment primary key,
nombre_academia varchar(100) not null
);

create table nivel (
id_nivel int auto_increment primary key,
nombre_nivel varchar(100) not null
);

create table clase (
id_clase int primary key,
id_academia int not null,
id_nivel int not null,
fecha_hora datetime not null,
duracion int not null,
constraint fk_academia foreign key (id_academia) references academia(id_academia),
constraint fk_nivel foreign key (id_nivel) references nivel(id_nivel)
);

create table registro_asistencia (
id_registro int  primary key,
id_usuario int not null,
id_clase int not null,
tipo_evento enum ('ingreso','salida'),
fecha_hora datetime not null, 
constraint chk_tipo_evento check (tipo_evento in ('ingreso', 'salida')),
constraint fk_usuario foreign key (id_usuario) references usuario(id_usuario),
constraint fk_clase foreign key (id_clase) references clase(id_clase)
);

create table tarifa (
id_tarifa int  primary key,
id_academia int not null,
id_nivel int not null,
costo_hora decimal (10,2) not null,
fecha_inicial_v date not null,
fecha_final_v date not null,
constraint fk_academia_t foreign key (id_academia) references academia(id_academia),
constraint fk_nivel_t foreign key (id_nivel) references nivel(id_nivel)
);

create table pago (
id_pago int primary key, 
id_usuario int not null, 
monto decimal (10,2) not null,
fecha_pago date not null,
tarjeta varchar(20),
metodo_pago varchar(50),
estado_pago enum('pendiente', 'pagado') default 'pendiente',
constraint fk_usuario_p foreign key (id_usuario) references usuario(id_usuario)
);
