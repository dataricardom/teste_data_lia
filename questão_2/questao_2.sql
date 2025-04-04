/* 
Vefificando dados contidos nas tabelas para identificar relacionamentos.
*/

SELECT * FROM departamento;

SELECT * FROM empregado;

SELECT * FROM vencimento;

SELECT * FROM emp_venc;

SELECT * FROM emp_desc;


/*
Consulta:
*/
SELECT d.nome, 
COUNT(distinct e.lotacao_div) AS quantidade_empregados, 
round(COALESCE(AVG(v.valor),0),2) AS media_salarial,
round(COALESCE(MAX(v.valor),0), 2) AS maior_salario,
round(COALESCE(MIN(v.valor),0), 2) AS menor_salario
FROM departamento AS d
JOIN empregado AS e
ON d.cod_dep = e.gerencia_cod_dep
JOIN emp_venc AS ev
ON e.matr = ev.matr
JOIN vencimento AS v
ON v.cod_venc = ev.cod_venc
GROUP BY d.nome
ORDER BY avg(v.valor) DESC
;

