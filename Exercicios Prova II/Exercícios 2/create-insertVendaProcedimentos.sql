CREATE TABLE Cidade (
codigo INTEGER NOT NULL PRIMARY KEY, 
nome VARCHAR(40), 
uf CHAR(2)
);

INSERT INTO cidade VALUES (1, 'Floripa', 'SC');
INSERT INTO cidade VALUES (2, 'Poa', 'RS');
INSERT INTO cidade VALUES (3, 'Curitiba', 'PR');
INSERT INTO cidade VALUES (4, 'São Paulo', 'SP');
INSERT INTO cidade VALUES (5, 'Rio de Janeiro', 'RJ');
INSERT INTO cidade VALUES (6, 'Joinville', 'SC');
INSERT INTO cidade VALUES (7, 'Gramado', 'RS');

CREATE TABLE Automovel (
codigo INTEGER NOT NULL PRIMARY KEY, 
Fabricante VARCHAR(40), 
Modelo VARCHAR(40), 
Ano CHAR(4), 
Pais VARCHAR(40), 
PrecoTabela numeric);

INSERT INTO automovel VALUES (1, 'GM', 'Vectra', '2000', 'BR', 50.000);
INSERT INTO automovel VALUES (2, 'GM', 'Celta', '2012', 'BR', 25.000);
INSERT INTO automovel VALUES (3, 'Fiat', 'Punto', '2012', 'BR', 43.000);
INSERT INTO automovel VALUES (4, 'Fiat', 'Bravo', '2012', 'BR', 52.000);
INSERT INTO automovel VALUES (5, 'Wolks', 'Gol', '2012', 'BR', 29.000);
INSERT INTO automovel VALUES (6, 'Ford', 'ka', '2012', 'BR', 23.000);
INSERT INTO automovel VALUES (7, 'Ford', 'Fiesta', '2012', 'BR', 49.000);
INSERT INTO automovel VALUES (8, 'Wolks', 'Golf', '2012', 'BR', 74.000);
INSERT INTO automovel VALUES (9, 'GM', 'Cruise', '2012', 'BR', 68.000);

CREATE TABLE Revendedora (
codigo INTEGER NOT NULL PRIMARY KEY, 
CNPJ VARCHAR(20), 
Nome VARCHAR(40), 
ProprietArio VARCHAR(40), 
codCid integer,
FOREIGN KEY(codCid) REFERENCES cidade (codigo));

INSERT INTO revendedora VALUES (1, '99995555', 'GM-Flor', 'Juca', 1);
INSERT INTO revendedora VALUES (2, '33339555', 'GM-Gaucha', 'Ana', 2);
INSERT INTO revendedora VALUES (3, '94444555', 'Ford-Curit', 'Juca', 3);
INSERT INTO revendedora VALUES (4, '99977775', 'Ford-Pauli', 'Laurinda', 4);
INSERT INTO revendedora VALUES (5, '88777755', 'Fiat-Caric', 'Lucas', 5);
INSERT INTO revendedora VALUES (6, '66695555', 'Wolks-Flor', 'Elisa', 1);
INSERT INTO revendedora VALUES (7, '66693335', 'Wolks-Caric', 'Luan', 5);
INSERT INTO revendedora VALUES (8, '11195555', 'Wolks-Pauli', 'Eloi', 4);
INSERT INTO revendedora VALUES (9, '22293335', 'Fiat-Pauli', 'Paul', 4);

CREATE TABLE Consumidor (
codigo INTEGER NOT NULL PRIMARY KEY, 
CPF INTEGER, 
Nome VARCHAR(40), 
Sobrenome VARCHAR(40), 
codcid integer, 
FOREIGN KEY(codCid) REFERENCES cidade (codigo));

INSERT INTO consumidor VALUES (1, 999999, 'Pedrito', 'Silva', 1);
INSERT INTO consumidor VALUES (2, 888888, 'Ana', 'Souza', 1);
INSERT INTO consumidor VALUES (3, 777777, 'Luis', 'Buarque', 2);
INSERT INTO consumidor VALUES (4, 999888, 'Jussara', 'Josun', 4);
INSERT INTO consumidor VALUES (5, 999777, 'Clodoaldo', 'Vitoria', 3);
INSERT INTO consumidor VALUES (6, 666666, 'Lenira', 'Perper', 3);
INSERT INTO consumidor VALUES (7, 999666, 'Bruninho', 'Blomon', 5);
INSERT INTO consumidor VALUES (8, 555555, 'Nelsi', 'Arantes',5);

CREATE TABLE Procedimento (
codigo INTEGER NOT NULL PRIMARY KEY, 
descricao VARCHAR(40));

INSERT INTO procedimento VALUES (1, 'Recall');
INSERT INTO procedimento VALUES (2, 'Geometria/Balanceamento');
INSERT INTO procedimento VALUES (3, 'Troca de Óleo');
INSERT INTO procedimento VALUES (4, 'Checagem eletrônica');

CREATE TABLE Venda (
codRev INTEGER NOT NULL, 
codCon INTEGER NOT NULL, 
codAut INTEGER NOT NULL, 
Data DATE NOT NULL, 
valor NUMERIC, 
garantia integer, -- valor em meses 
PRIMARY KEY(codRev, codCon, codAut, Data),
FOREIGN KEY(codRev) REFERENCES revendedora (codigo),
FOREIGN KEY(codCon) REFERENCES consumidor (codigo),
FOREIGN KEY(codAut) REFERENCES automovel (codigo)
);

INSERT INTO venda VALUES (7, 8, 5, '19/04/2008', 28.000, 12);
INSERT INTO venda VALUES (1, 1, 1, '19/10/2008', 23.000, 12);
INSERT INTO venda VALUES (2, 1, 1, '15/12/2008', 22.000, 12);


INSERT INTO venda VALUES (1, 1, 2, '10/03/2012', 50.000, 12);
INSERT INTO venda VALUES (1, 2, 1, '02/05/2012', 24.000, 12);
INSERT INTO venda VALUES (2, 3, 2, '01/07/2012', 49.000, 12);
INSERT INTO venda VALUES (2, 4, 2, '21/06/2012', 48.500, 12);
INSERT INTO venda VALUES (3, 5, 6, '22/06/2012', 22.000, 12);
INSERT INTO venda VALUES (5, 6, 3, '02/07/2012', 40.000, 12);
INSERT INTO venda VALUES (5, 7, 4, '23/05/2012', 51.000, 12);
INSERT INTO venda VALUES (7, 8, 5, '19/04/2012', 28.000, 12);
INSERT INTO venda VALUES (1, 1, 1, '19/10/2000', 23.000, 12);
INSERT INTO venda VALUES (2, 1, 1, '15/12/2000', 22.000, 12);


INSERT INTO venda VALUES (1, 1, 2, '10/03/2010', 50.000, 24);
INSERT INTO venda VALUES (1, 2, 1, '02/05/2010', 24.000, 24);
INSERT INTO venda VALUES (2, 3, 2, '01/07/2010', 49.000, 12);
INSERT INTO venda VALUES (2, 4, 2, '21/06/2010', 48.500, 12);
INSERT INTO venda VALUES (3, 5, 6, '22/06/2010', 22.000, 24);
INSERT INTO venda VALUES (5, 6, 3, '02/07/2010', 40.000, 12);
INSERT INTO venda VALUES (5, 7, 4, '23/05/2010', 51.000, 20);
INSERT INTO venda VALUES (7, 8, 5, '19/04/2010', 28.000, 12);

INSERT INTO venda VALUES (5, 1, 4, '03/10/2010', 51.000, 20);
INSERT INTO venda VALUES (7, 1, 5, '01/11/2010', 28.000, 12);

INSERT INTO venda VALUES (5, 2, 4, '03/10/2010', 51.000, 20);
INSERT INTO venda VALUES (7, 2, 5, '01/11/2010', 28.000, 12);

CREATE TABLE proc_venda (
codRev INTEGER NOT NULL, 
codCon INTEGER NOT NULL, 
codAut INTEGER NOT NULL, 
Data DATE NOT NULL, 
codPro integer, 
PRIMARY KEY(codRev, codCon, codAut, Data, codPro),
FOREIGN KEY(codRev, codCon, codAut, Data) REFERENCES venda (codRev, codCon, codAut, Data),
FOREIGN KEY(codPro) REFERENCES procedimento (codigo)
);

INSERT INTO proc_venda VALUES (5, 7, 4, '23/05/2012', 2);
INSERT INTO proc_venda VALUES (7, 8, 5, '19/04/2012', 2);
INSERT INTO proc_venda VALUES (5, 6, 3, '02/07/2012', 3);

INSERT INTO proc_venda VALUES (1, 1, 2, '10/03/2010', 1);
INSERT INTO proc_venda VALUES (1, 2, 1, '02/05/2010', 2);
INSERT INTO proc_venda VALUES (2, 3, 2, '01/07/2010', 3);
INSERT INTO proc_venda VALUES (2, 4, 2, '21/06/2010', 3);
INSERT INTO proc_venda VALUES (3, 5, 6, '22/06/2010', 3);
INSERT INTO proc_venda VALUES (5, 6, 3, '02/07/2010', 2);
INSERT INTO proc_venda VALUES (5, 7, 4, '23/05/2010', 1);
INSERT INTO proc_venda VALUES (7, 8, 5, '19/04/2010', 2);


INSERT INTO proc_venda VALUES (1, 1, 2, '10/03/2012', 4);
INSERT INTO proc_venda VALUES (1, 2, 1, '02/05/2012', 4);
INSERT INTO proc_venda VALUES (2, 3, 2, '01/07/2012', 4);
INSERT INTO proc_venda VALUES (2, 4, 2, '21/06/2012', 4);
INSERT INTO proc_venda VALUES (3, 5, 6, '22/06/2012', 4);
INSERT INTO proc_venda VALUES (5, 6, 3, '02/07/2012', 4);
INSERT INTO proc_venda VALUES (5, 7, 4, '23/05/2012', 4);
INSERT INTO proc_venda VALUES (7, 8, 5, '19/04/2012', 4);
INSERT INTO proc_venda VALUES (1, 1, 1, '19/10/2000', 4);
INSERT INTO proc_venda VALUES (2, 1, 1, '15/12/2000', 4);
INSERT INTO proc_venda VALUES (1, 1, 2, '10/03/2010', 4);
INSERT INTO proc_venda VALUES (1, 2, 1, '02/05/2010', 4);
INSERT INTO proc_venda VALUES (2, 3, 2, '01/07/2010', 4);
INSERT INTO proc_venda VALUES (2, 4, 2, '21/06/2010', 4);
INSERT INTO proc_venda VALUES (3, 5, 6, '22/06/2010', 4);
INSERT INTO proc_venda VALUES (5, 6, 3, '02/07/2010', 4);
INSERT INTO proc_venda VALUES (5, 7, 4, '23/05/2010', 4);
INSERT INTO proc_venda VALUES (7, 8, 5, '19/04/2010', 4);


INSERT INTO proc_venda VALUES (5, 1, 4, '03/10/2010', 4);
INSERT INTO proc_venda VALUES (7, 1, 5, '01/11/2010', 4);
INSERT INTO proc_venda VALUES (5, 2, 4, '03/10/2010', 4);
INSERT INTO proc_venda VALUES (7, 2, 5, '01/11/2010', 4);
INSERT INTO proc_venda VALUES (7, 8, 5, '19/04/2008', 4);
INSERT INTO proc_venda VALUES (1, 1, 1, '19/10/2008', 4);
INSERT INTO proc_venda VALUES (2, 1, 1, '15/12/2008', 4);

