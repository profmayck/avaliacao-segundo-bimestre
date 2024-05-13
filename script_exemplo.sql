
SELECT primeiro_nome categoria, count(primeiro_nome), SUM(preco)
FROM produtos_agrupamento
WHERE primeiro_nome like 'M%'
GROUP BY primeiro_nome
HAVING COUNT(primeiro_nome) > 1
AND SUM(preco) > 300

UNION

SELECT primeiro_nome categoria, count(primeiro_nome), SUM(preco)
FROM produtos_agrupamento
GROUP BY primeiro_nome
HAVING COUNT(primeiro_nome) >= 5
AND SUM(preco) < 300
