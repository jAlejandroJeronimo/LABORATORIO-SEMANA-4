use planilla_bd;
create table concepto_6560
(
	codigo_concepto varchar(5) primary key,
    nombre_concepto varchar(60) not null,
    efecto_concepto varchar(1) not null,
    estatus_concepto varchar(1) not null
) engine=innodb DEFAULT CHARSET=latin1;

create table departamento_6560
(
	codigo_departamento varchar(5) primary key,
    nombre_departamento varchar(60) not null,
    estatus_departamento varchar(1) not null
) engine=innodb DEFAULT CHARSET=latin1;

create table empleado_6560
(
	codigo_empleado varchar(5) primary key,
    nombre_empleado varchar(60) not null,
    codigo_puesto varchar(5) not null,
    codigo_departamento varchar(5) not null,
    sueldo_empleado float(10,2) not null,
    estatus_empleado varchar(1) not null
    
) engine=innodb DEFAULT CHARSET=latin1;

create table nominad_6560
(
	codigo_nomina varchar(5),
    codigo_empleado varchar(5),
    codigo_concepto varchar(5),
    valor_nominaD float(10,2) not null,
    primary key(codigo_nomina,codigo_empleado,codigo_concepto),
    foreign key (codigo_concepto) references concepto_6560 (codigo_concepto),
    foreign key (codigo_nomina) references nominae_6560 (codigo_nomina),
    foreign key (codigo_empleado) references empleado_6560 (codigo_empleado)
) engine=innodb DEFAULT CHARSET=latin1;

create table nominae_6560
(
	codigo_nomina varchar(5) primary key,
    fecha_inicial_nomina date,
    fecha_final_nomina date
    ) engine=innodb DEFAULT CHARSET=latin1;

