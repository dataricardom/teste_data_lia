# Teste Data Lia

# Ricardo Marques

Olá, seja bem vindo ao meu repositorio!
Aqui esta as questões solicitadas no teste:

Onde a resposta de cada uma esta localizada nas respectivas pastas

questão_1
questão_2

Fique a vontade para avaliar :)

### Questão 1.
Dadas as 3 tabelas:

- students: (id int, name text, enrolled_at date, course_id text)
- courses: (id int, name text, price numeric, school_id text)
- schools: (id int, name text)
Considere que todos alunos se matricularam nos respectivos cursos e que price é o valor da matrícula, pago por cada aluno.



a. Escreva uma consulta PostgreSQL para obter, por nome da escola e por dia, a quantidade de alunos matriculados e o valor total das matrículas, tendo como restrição os cursos que começam com a palavra “data”. Ordene o resultado do dia mais recente para o mais antigo.

b.Utilizando a resposta do item a, escreva uma consulta para obter, por escola e por dia, a soma acumulada, a média móvel 7 dias e a média móvel 30 dias da quantidade de alunos.

Nota: não fornecemos o banco de dados para essa questão, ela pode ser realizada somente com as informações do enunciado. No entanto, se for mais confortável, você pode criar as tabelas com dados fictícios, para facilitar testar seu código.



### Questão 2.
Para cada departamento, realize uma consulta em PostgresSQL que mostre o nome do departamento, a quantidade de empregados, a média salarial, o maior e o menor salários. Ordene o resultado pela maior média salarial.

Dicas: você pode usar a função COALESCE(value , 0) para substituir um valor nulo por zero e pode usar a função ROUND(value, 2) para mostrar valores com duas casas decimais.

No arquivo base_dados_questao2.sql, em anexo no email enviado com o link deste forms, está o banco de dados. Recomendo rodar localmente para analisar o conteúdo das tabelas, testar e validar sua consulta.

