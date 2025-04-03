select * from departamento;

select * from empregado;

select * from vencimento;

select * from emp_venc;

select * from emp_desc;

select d.nome, 
count(distinct e.lotacao_div) as quantidade_empregados, 
round(COALESCE(avg(v.valor),0),2) as media_salarial,
round(COALESCE(max(v.valor),0), 2) as maior_salario,
round(COALESCE(min(v.valor),0), 2) as menor_salario
from departamento as d
join empregado as e
on d.cod_dep = e.gerencia_cod_dep
join emp_venc as ev
on e.matr = ev.matr
join vencimento as v
on v.cod_venc = ev.cod_venc
group by d.nome
order by avg(v.valor),2) DESC

;


select * from emp_venc;

select * from emp_desc;