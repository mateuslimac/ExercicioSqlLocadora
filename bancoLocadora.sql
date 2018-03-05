create table ator (
      cod_ator int not null,
      nome_ator varchar(50) not null,
      constraint cod_ator_pk primary key (cod_ator)
);


create table genero(
      cod_genero int not null,
      descr_genero varchar(30) not null,
      constraint cod_genero_pk primary key (cod_genero)
);

create table categoria (
      cod_cat int not null,
      descr_cat varchar(40),
      constraint cod_cat_pk primary key (cod_cat)
);

create table cliente (
      cod_cli int not null,
      nome_cli varchar(50) not null,
      end_cli varchar(70) not null,
      cidade_cli varchar(30) not null,
      uf_cli varchar(10) not null,
      fone_cli varchar(40) not null,
      cpf_cli int not null,
      rg_cli int not null,
      constraint cod_cli_pk primary key (cod_cli),
      constraint cpf_cli_uq unique (cpf_cli),
      constraint rg_cli_uq unique (rg_cli)
);

create table autorizado (
      cod_aut int not null,
      nome_aut varchar(50) not null,
      cod_filme int not null,
      constraint cod_aut_pk primary key (cod_aut),
      constraint cod_filme_pk foreign key (cod_filme references table cliente (cod_cli)
);