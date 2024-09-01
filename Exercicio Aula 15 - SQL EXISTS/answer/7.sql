

SELECT nome 
FROM funcionario p JOIN (   SELECT salario 
                            FROM funcionario NATURAL JOIN ( SELECT min(dtaNasc) as dtaNasc 
                                                            FROM funcionario) as tb1) t ON p.salario > t.salario