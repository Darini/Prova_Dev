create table DEPARTAMENTOS(
	id_departamento integer not null,
	nm_departamento varchar(100),
	local varchar(100),
	constraint pk_departamentos primary key(id_departamento)
);

create table EMPREGADOS(
	id_empregado int not null,
	cod_departamento int not null,
	cod_emp_funcao integer not null,
	nm_empregado varchar(100),
	nm_funcao varchar(100),
	data_admissao date,
	salario numeric(92,5),
	comissao numeric(92,5),
	constraint pk_id_empregado primary key(id_empregado),
	constraint fk_empregados_departamento foreign key(cod_departamento) references DEPARTAMENTOS(id_departamento),
	constraint fk_empregados_empregados foreign key(cod_emp_funcao) references EMPREGADOS(id_empregado)
);

create table ID_TABELAS(
	id_tabelas int not null,
	nm_tabela varchar(200) not null ,
	id int not null,
	constraint pk_id_tabelas primary key(id_tabelas)
);


INSERT INTO DEPARTAMENTOS(id_departamento,nm_departamento, local)
				VALUES (1,'RH','Térreo');

INSERT INTO DEPARTAMENTOS(id_departamento,nm_departamento, local)
				VALUES (2,'Direção','5º Andar - Sala 1');
				
INSERT INTO DEPARTAMENTOS(id_departamento,nm_departamento, local)
				VALUES (3,'Vendas','2º Andar - Sala 3');
				
INSERT INTO DEPARTAMENTOS(id_departamento,nm_departamento, local)
				VALUES (4,'Financeiro','1º Andar - Sala 2');
				
INSERT INTO DEPARTAMENTOS(id_departamento,nm_departamento, local)
				VALUES (5,'Infra','4º Andar - Sala 1');

INSERT INTO EMPREGADOS VALUES(1,1,1,'Lucas Darini','Estagiário','01/02/2022',500.00,0.00);
INSERT INTO EMPREGADOS VALUES(2,1,2,'Rogério da Silva','Supervisor','10/01/2015',3000.00,1.00);
INSERT INTO EMPREGADOS VALUES(3,3,3,'Renan dos Santos','Vendedor','25/03/2018',3500,15.00);
INSERT INTO EMPREGADOS VALUES(4,4,3,'Gabriel Henrique','Contador','03/05/2015',3000.00,0.00);
INSERT INTO EMPREGADOS VALUES(5,5,5,'Antônio Rezende','Técnico de Rede','06/01/2017',4000.00,0.00);

INSERT INTO ID_TABELAS VALUES(1,'DEPARTAMENTOS',5);
INSERT INTO ID_TABELAS VALUES(2,'EMPREGADOS',5)
