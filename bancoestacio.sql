create table funcionario (

    cod_func int not null,
    nome varchar(40) not null,
    nascimento date not null,
    sexo char not null,
    departamento_cod int not null,
    constraint cod_func_pk primary key (cod_func)  
);


create table departamentos (

    cod_dep int not null,
    nome varchar(40) not null
    constraint cod_dep_pk primary key (cod_dep)
);


alter table departamentos add constraint cod_dep_pk primary key (cod_dep);

alter table funcionario add constraint departamento_cod_fk foreign key  (departamento_cod) references departamentos (cod_dep);

alter table funcionario add column cpf int;

alter table funcionario drop constraint cod_func_pk;

alter table funcionario add constraint cpf_pk primary key (cpf);

alter table funcionario drop column cod_func

