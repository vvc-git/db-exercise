/*create view tb5
as
select d.NomeCorretor, v.CIC, v.CodImovel
from corretor d join venda v on d.codCorretor=v.codCorretor
where DataVenda between '2006-01-01' and '2006-12-31';*/
drop view tb6;
create view tb6
as
select f.CIC, v.CodImovel
from pessoa f join venda v on f.CIC=v.CIC
where f.sexo<>'F';

--select * from tb5
select tb5.NomeCorretor
from tb5 join tb6 on tb5.codIMovel=tb6.codImovel;

--select * from pessoa;

--DROP VIEW tb5;

--drop view tb3;
--drop view tb4;*/