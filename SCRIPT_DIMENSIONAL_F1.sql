
/*==============================================================*/
/* Table: FABRICANTE                                            */
/*==============================================================*/
create table D_FABRICANTE (
   id_fabricante INTEGER not null,
   no_fabricante VARCHAR(40) not null,
   modelo VARCHAR(20) not null,
   constraint PK_FABRICANTE primary key (id_fabricante)
);



/*==============================================================*/
/* Table: CONSTRUTOR                                            */
/*==============================================================*/
create table D_CONSTRUTOR (
   ID_RESUL_CONSTR INTEGER not null,
   ID_CORRIDA INTEGER not null,
   ID_CONSTRUTOR VARCHAR(5) not null,
   pt_construtor INTEGER not null,
   no_construtor VARCHAR(30) not null,
   constraint PK_CONSTRUTOR primary key (id_construtor)
);



/*==============================================================*/
/* Table: CORRIDA                                               */
/*==============================================================*/
create table D_CORRIDA (
   ID_CORRIDA INTEGER not null,
   ano_corrida INTEGER not null,
   round INTEGER not null,
   no_corrida VARCHAR(40)not null,
   id_circuito INTEGER not null,
   id_posicao INTEGER not null,
   constraint PK_CORRIDA primary key (ID_CORRIDA)
);


/*==============================================================*/
/* Table: CIRCUITO                                              */
/*==============================================================*/
create table D_CIRCUITO (
   ID_CIRCUITO INTEGER not null,
   RF_CIRCUITO VARCHAR(50) not null,
   NO_CIRCUITO VARCHAR(50) not null,
   LOCALIZACAO VARCHAR(50) not null,
   constraint PK_CIRCUITO primary key (ID_CIRCUITO)
);

/*==============================================================*/
/* Table: PILOTO                                                */
/*==============================================================*/
create table D_PILOTO (
   ID_PILOTO INTEGER not null,
   NO_PILOTO VARCHAR(30) not null,
   NACIONALIDADE VARCHAR(20) not null,
   rf_piloto VARCHAR(10),
   NU_PILOTO VARCHAR(10) not null,
   constraint PK_PILOTO primary key (ID_PILOTO)
);

/*==============================================================*/
/* Table: RESULTADO                                             */
/*==============================================================*/
create table F_RESULTADO (
   ID_RESULTADO INTEGER not null,
   ID_CORRIDA INTEGER not null,
   ID_CONSTRUTOR INTEGER,
   ID_PILOTO INTEGER not null,
   ID_CIRCUITO INTEGER not null,
   CodData int not null,
   NU_CARRO INTEGER not null,
   POSICAO_FINAL VARCHAR(10) null,
   VOLTA_RAPIDA VARCHAR(20) NOT NULL,
   TEMPO1 VARCHAR(10) NOT NULL,
   TEMPO2 VARCHAR(10) NOT NULL,
   TEMPO3 VARCHAR(10),
   PT_PILOTO INTEGER,
   constraint PK_RESULTADO primary key (ID_CORRIDA,ID_CONSTRUTOR,ID_PILOTO,ID_RESULTADO)
);

/*==============================================================*/
/* Table: Data                                                  */
/*==============================================================*/
create table D_Data (
	CodData	int not null,
	Data date not null,	
	DiaDaSemana	varchar(20) not null,
	Dezena tinyint not null,
	Quinzena  tinyint not null,
	NumeroMes  tinyint not null,
	Mes	varchar(20) not null,
	Bimestre  tinyint not null,	
	Trimestre  tinyint not null,	
	Semestre  tinyint not null,	
	Ano smallint not null,
    constraint PK_Data primary key (CodData)
);