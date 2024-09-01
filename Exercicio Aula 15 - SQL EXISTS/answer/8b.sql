SELECT
FROM produto p
WHERE NOT EXISTS (SELECT *
                    FROM produtoVendido pv 
                    WHERE p.codigo=pv.numero)