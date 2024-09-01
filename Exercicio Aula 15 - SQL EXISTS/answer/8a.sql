SELECT p.nome
FROM produto p JOIN (   SELECT MAX(preco) as preco
                        FROM produto p
                        WHERE NOT EXISTS (  SELECT *
                                            FROM produtovendido pv
                                            WHERE p.codigo = pv.numero)) t ON p.preco = t.preco
