CREATE VIEW tb2 
as
SELECT d.codCorretor, v.CIC
FROM corretor d JOIN venda v ON d.codCorretor=v.codCorretor JOIN pessoa u ON v.CIC=u.CIC;
WHERE d.nomeCorretor='Antenor Antunes';

SELECT u.nomePess 
FROM tb2 v JOIN pessoa u ON v.CIC=u.CIC;s