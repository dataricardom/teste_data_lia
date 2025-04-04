/* Questão 1

 A) */ 

SELECT s.name AS escola, 
	COUNT(st.id) AS qtd_alunos, 
	ROUND(SUM(c.price), 2)preco_total_matriculas, 
	st.enrolled_at AS data_matricula
FROM schools AS s
LEFT JOIN courses AS c ON s.id = c.school_id
LEFT JOIN students AS st ON st.course_id = c.id
WHERE c.name LIKE 'Data%'
GROUP BY s.name, st.enrolled_at
ORDER BY st.enrolled_at DESC ;


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