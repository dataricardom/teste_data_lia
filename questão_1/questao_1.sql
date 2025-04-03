/* Questão 1

 A) */ 

select s.name as escola, 
	count(st.id) as qtd_alunos, 
	round(sum(c.price), 2)preco_total_matriculas, 
	st.enrolled_at as data_matricula
from schools as s
left join courses as c on s.id = c.school_id
left join students as st on st.course_id = c.id
where c.name like 'Data%'
group by s.name, st.enrolled_at
order by st.enrolled_at DESC ;


/*
B)
*/


SELECT 
    escola,
    data_matricula,
    
    
    -- Soma Acumulada
    SUM(preco_total_matriculas) OVER (
        PARTITION BY escola 
        ORDER BY data_matricula 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS soma_acumulada,
    
    -- Média Móvel 7 Dias
    ROUND(AVG(preco_total_matriculas) OVER (
        PARTITION BY escola 
        ORDER BY data_matricula 
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ), 2) AS media_movel_7_dias,

    -- Média Móvel 30 Dias
    ROUND(AVG(preco_total_matriculas) OVER (
        PARTITION BY escola 
        ORDER BY data_matricula 
        ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
    ), 2) AS media_movel_30_dias

FROM 
    Escolas_Total_Matricula
ORDER BY 
    escola, data_matricula DESC;