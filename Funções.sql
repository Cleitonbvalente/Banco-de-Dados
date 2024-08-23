create database auladml;

use auladml;

select empregado.nome, departamento.nome
from empregado join departamento departamento
on empregado.codigodepartamento=departamento.codigodepartamento;

select empregado.nome, departamento.nome
from empregado join departamento departamento
on empregado.codigodepartamento = departamento.codigodepartamento
where departamento.nome="Informática";

select empregado.nome, salario
from empregado join departamento departamento
on empregado.codigodepartamento = departamento.codigodepartamento
where salario>2000;

insert into empregado values (15, "Sakura", "Konoha", 8900, null),
(16, "Rock Lee", "Konoha", 2500, null);

insert into departamento values(6000, "Feraria");

select empregado.nome, departamento.nome
from empregado left join departamento
on empregado.codigodepartamento = departamento.codigodepartamento;

select departamento.nome, empregado.nome
from departamento left join empregado
on departamento.codigodepartamento = empregado.codigodepartamento;

select departamento.nome, count(empregado.codigoEmpregado)
from departamento join empregado on departamento.codigoDepartamento = empregado.codigoDepartamento
group by departamento.codigoDepartamento;

select departamento.nome, avg(empregado.salario)
from departamento join empregado on departamento.codigoDepartamento = empregado.codigoDepartamento
group by departamento.codigoDepartamento;

select departamento.nome, avg(empregado.salario)
from departamento join empregado on departamento.codigoDepartamento = empregado.codigoDepartamento
group by departamento.codigoDepartamento
order by avg(empregado.salario);

select departamento.nome, min(empregado.salario), max(empregado.salario)
from departamento join empregado on departamento.codigoDepartamento = empregado.codigoDepartamento
group by departamento.codigoDepartamento;

select departamento.nome, count(empregado.codigoEmpregado)
from departamento join empregado on departamento.codigoDepartamento = empregado.codigoDepartamento
group by departamento.codigoDepartamento
having count(empregado.codigoEmpregado)>2;

select departamento.nome, avg(salario)
from departamento join empregado on departamento.codigoDepartamento = empregado.codigoDepartamento
group by departamento.codigoDepartamento
having avg(salario)>2500;

select departamento.nome, sum(salario)
from departamento join empregado on departamento.codigoDepartamento = empregado.codigoDepartamento
group by departamento.codigoDepartamento
having sum(salario)>5000;

create table FilialA(
Cod varchar(5) primary key,
Nome_emp varchar(50),
Sexo varchar(1),
Cargo varchar(30));

create table FilialB(
Cod varchar(5) primary key,
Nome_emp varchar(50),
Cargo varchar(30));

insert into FilialA values("FA01", "Maria Santos", "F", "Secretária"),
("FA02", "Ayrton Sales", "M", "Estagiário"),
("FA03", "William Bento", "M", "Porteiro");

insert into FilialB values("FB01", "João de Deus", "Diretor"),
("FB02", "Ana Maria", "Estagiário");

select *
from FilialA;

select *
from FilialB;

select Cod, Nome_emp, cargo
from FilialA
union
select Cod, Nome_emp, cargo
from FilialB;

select Nome_emp, char_length(Nome_emp)
from FilialA;

select concat(Cod, " ", Nome_emp)
from FilialA;

select concat_ws(" ", Cod, Nome_emp)
from FilialA;

select format(Salario, 2)
from empregado;

select nome, instr(nome, "a")
from empregado;

select nome, substr(nome, 1, 3)
from empregado;

select nome, lcase(nome)
from empregado;

select nome, ucase(nome)
from empregado;

select nome, left(nome, 3)
from empregado;

select nome, right(nome, 3)
from empregado;

select ceil(avg(salario))
from empregado;

select floor(avg(salario))
from empregado;

select adddate('2024-23-08"', 1)
from empregado;
