SELECT nome, email, tipo as 'Funcionario'
FROM venda v JOIN f Funcionario on v.codFun=p.codigo
UNION
SELECT nome, email, tipo as 'Cliente'
FROM venda v JOIN c Cliente on v.codFun=c.codigo
