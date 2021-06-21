/*==============================================================*/
/* Table: CIRCUITO                                              */
/*==============================================================*/
create table CIRCUITO (
   ID_CIRCUITO          INTEGER               not null,
   RF_CIRCUITO          CLOB                  not null,
   NO_CIRCUITO          CLOB                  not null,
   LOCALIZACAO          CLOB                  not null,
   PAIS                 CLOB                  not null,
   LATITUDE             CLOB                  not null,
   LONGITUDE            CLOB                  not null,
   ALTITUDE             CLOB                  not null,
   URL                  CLOB                  not null,
   constraint PK_CIRCUITO primary key (ID_CIRCUITO)
);

/*==============================================================*/
/* Table: CONSTRUTOR                                            */
/*==============================================================*/
create table CONSTRUTOR (
   ID_CONSTRUTOR        INTEGER               not null,
   CO_CONSTRUTOR        INTEGER               not null,
   RF_CONSTRUTOR        CLOB                  not null,
   NO_CONSTRUTOR        CLOB                  not null,
   NACIONALIDADE        CLOB                  not null,
   constraint PK_CONSTRUTOR primary key (ID_CONSTRUTOR)
);

/*==============================================================*/
/* Table: CORRIDA                                               */
/*==============================================================*/
create table CORRIDA (
   ID_CORRIDA           INTEGER               not null,
   ANO                  INTEGER               not null,
   ROUND                INTEGER               not null,
   ID_CIRCUITO          INTEGER               not null,
   NO_CORRIDA           CLOB                  not null,
   DT_CORRIDA           CLOB                  not null,
   HORA                 DATE                  not null,
   URL                  CLOB                  not null,
   constraint PK_CORRIDA primary key (ID_CORRIDA)
);

/*==============================================================*/
/* Table: FABRICANTE                                            */
/*==============================================================*/
create table FABRICANTE (
   ID_FABRICANTE        INTEGER               not null,
   NO_FABRICANTE        CLOB                  not null,
   MODELO               CLOB                  not null,
   POTENCIA             CLOB                  not null,
   constraint PK_FABRICANTE primary key (ID_FABRICANTE)
);

/*==============================================================*/
/* Table: PILOTO                                                */
/*==============================================================*/
create table PILOTO (
   ID_PILOTO            INTEGER               not null,
   ID_CORRIDA           INTEGER               not null,
   NO_PILOTO            CLOB                  not null,
   SOBRENOME            CLOB                  not null,
   NACIONALIDADE        CLOB                  not null,
   DT_NASCIMENTO        DATE                  not null,
   NU_PILOTO            CLOB                  not null,
   RF_PILOTO            CLOB                  not null,
   URL                  CLOB                  not null,
   constraint PK_PILOTO primary key (ID_PILOTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on PILOTO (
   ID_CORRIDA ASC
);

/*==============================================================*/
/* Table: QUALIFICACAO                                          */
/*==============================================================*/
create table QUALIFICACAO (
   ID_QUALIFICACAO      INTEGER               not null,
   ID_CORRIDA           INTEGER               not null,
   ID_PILOTO            INTEGER               not null,
   ID_CONSTRUTOR        INTEGER               not null,
   POSICAO              INTEGER               not null,
   NU_CARRO             INTEGER               not null,
   TEMPO1               CLOB                  not null,
   TEMPO2               CLOB                  not null,
   TEMPO3               CLOB                  not null,
   constraint PK_QUALIFICACAO primary key (ID_QUALIFICACAO)
);

/*==============================================================*/
/* Table: RESULTADO                                             */
/*==============================================================*/
create table RESULTADO (
   ID_QUALIFICACAO      INTEGER               not null,
   ID_CORRIDA           INTEGER               not null,
   ID_CONSTRUTOR        INTEGER,
   ID_PILOTO            INTEGER               not null,
   ID_RESULTADO         INTEGER               not null,
   NU_CARRO             INTEGER               not null,
   POSICAO              INTEGER               not null,
   POSICAO_FINAL        INTEGER               not null,
   TX_POSICAO_FINAL     CLOB                  not null,
   PI_RANKING           CLOB                  not null,
   CO_RANKING           CLOB                  not null,
   constraint PK_RESULTADO primary key (ID_QUALIFICACAO, ID_CORRIDA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on RESULTADO (
   ID_CORRIDA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on RESULTADO (
   ID_QUALIFICACAO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on RESULTADO (
   ID_CONSTRUTOR ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on RESULTADO (
   ID_PILOTO ASC
);