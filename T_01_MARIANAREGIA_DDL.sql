USE T_OPFLIX;

--DDL
--CRIA��O

CREATE TABLE TIPOUSUARIO
(
IDTIPOUSUARIO INT PRIMARY KEY IDENTITY 
,TIPOUSUARIO VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE CATEGORIA
(
IDCATEGORIA INT PRIMARY KEY IDENTITY 
,CATEGORIA VARCHAR (200) NOT NULL UNIQUE
);


--FILME OU S�RIE
CREATE TABLE TIPO
(
IDTIPO INT PRIMARY KEY IDENTITY 
,TIPO VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE USUARIO
(
IDUSUARIO INT PRIMARY KEY IDENTITY 
,NOME VARCHAR (200) NOT NULL 
,EMAIL VARCHAR (200) NOT NULL UNIQUE
,SENHA VARCHAR (200) NOT NULL UNIQUE
,TELEFONE INT 
,IDTIPOUSUARIO INT FOREIGN KEY REFERENCES TIPOUSUARIO (IDTIPOUSUARIO)
);

CREATE TABLE PLATAFORMA
(
IDPLATAFORMA INT PRIMARY KEY IDENTITY 
, PLATAFORMA VARCHAR (200) NOT NULL UNIQUE
);



CREATE TABLE LANCAMENTOS 
(
IDLANCAMENTOS INT PRIMARY KEY IDENTITY
,TITULO VARCHAR (200) NOT NULL 
,SINOPSE VARCHAR (200) NOT NULL 
,IDCATEGORIA INT FOREIGN KEY REFERENCES CATEGORIA (IDCATEGORIA)
,IDTIPO INT FOREIGN KEY REFERENCES TIPO (IDTIPO)
,TEMPODURACAO TIME NOT NULL
,DATALANCAMENTO DATE NOT NULL
,IDPLATAFORMA INT FOREIGN KEY REFERENCES PLATAFORMA (IDPLATAFORMA)
);

CREATE TABLE PLATAFORMALANCAMENTO
(
IDPLATAFORMA INT FOREIGN KEY REFERENCES PLATAFORMA (IDPLATAFORMA)
,IDLANCAMENTOS INT FOREIGN KEY REFERENCES LANCAMENTOS (IDLANCAMENTOS)
);