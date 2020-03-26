use bd_ins;

create table Estudiantes
(
	Codigo_Carnet varchar(10) primary key,
    NombreEstudiante varchar(60) not null,
    Apellido_Estudiante varchar(60) not null,
    Direccion_Estudiante varchar(80) not null,
    No_Telefono varchar(20) not null
) engine=innodb DEFAULT CHARSET=latin1;