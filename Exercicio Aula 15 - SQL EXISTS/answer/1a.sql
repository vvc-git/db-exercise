select nome from produto p where not exists (select * from venda v join produtovendido pv on v.numero = pv.numero
											 where p.codigo = pv.codprod 
											 and v.data between '2004-01-01' and '2007-12-31');