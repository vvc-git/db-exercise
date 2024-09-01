CREATE TABLE professor 
(
    codigo int NOT NULL,
    nome varchar(40),
    RG int,
    sexo char(1) DEFAULT 'F' CHECK(sexo in ('F', 'M')),
    UNIQUE (RG), 
    CONSTRAINT pk_professor PRIMARY KEY (codigo)
);

CREATE TABLE aluno 
(
    codigo int NOT NULL,
    nome varchar(40),
    dtaNasc timestamp,
    sexo char(1),
    RG integer,
    UNIQUE (RG),
    CONSTRAINT pk_aluno PRIMARY KEY (codigo)  
);

CREATE TABLE tipo 
(
    codigo int NOT NULL,
    nome varchar(40),
    CONSTRAINT pk_tipo PRIMARY KEY (codigo)
);

CREATE TABLE aula 
(
    codAlu integer NOT NULL,
    codTip integer NOT NULL,
    codProf integer NOT NULL,
    dtaInicio integer NOT NULL,
    dtaFim integer,
    FOREIGN KEY (codAlu) REFERENCES aluno(codigo),
    FOREIGN KEY (codTip) REFERENCES tipo(codigo),
    FOREIGN KEY (codProf) REFERENCES professor(codigo),
    CONSTRAINT pk_aula PRIMARY KEY (codAlu, codTip, codProf, dtaInicio)
);

CREATE TABLE rendimento 
(
    codAlu integer NOT NULL,
    codTip int,
    codProf int,
    dtaInicio int,
    observacoes int, 
    aproveitamento varchar(8) DEFAULT 'Ruim' CHECK(aproveitamento in ('Exelente', 'Bom', 'Ruim')), 
    FOREIGN KEY (codAlu, codTip, codProf, dtaInicio) REFERENCES aula (codAlu, codTip, codProf, dtaInicio)
);

