SELECT nome
FROM cidade 
WHERE uf LIKE 'RS' ^ uf  LIKE 'SP' ^ nome LIKE 'S%'