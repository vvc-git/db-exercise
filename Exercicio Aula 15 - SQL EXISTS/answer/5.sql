select v.data, p.nome, sum(pv.valor) from venda v join produtovendido pv on v.numero = pv.numero join produto p on pv.codprod = p.codigo 
where v.data between '2003-01-01' and '2004-12-31'
group by v.data, p.nome
having sum(pv.valor) > 100
order by v.data;