
select v.data, f.nome, sum(pv.valor) from venda v join funcionario f on v.codfun = f.codigo join cliente c on v.codclie = c.codigo join produtovendido pv on v.numero = pv.numero
where c.nome = 'Monira Rosa'
group by v.data, f.nome
order by v.data;
