SELECT nome, email
FROM  Cliente c JOIN venda v on c.codigo=v.codFun
WHERE tipo='A VISTA'