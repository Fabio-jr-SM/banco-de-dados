-- Selecionando o bd
SELECT * from avaliacoes;

-- obter as notas medias das turmas
SELECT avg(nota) from avaliacoes where turma=='A';
SELECT avg(nota) from avaliacoes where turma=='B';
SELECT avg(nota) from avaliacoes where turma=='C';

-- Obter as notas medias dos bimestres
SELECT avg(nota) from avaliacoes where bimestre==1;
SELECT avg(nota) from avaliacoes where bimestre==2;
SELECT avg(nota) from avaliacoes where bimestre==3;

-- Obter a maior e a menor nota de cada turma
SELECT max(nota) from avaliacoes where turma=='A';
SELECT max(nota) from avaliacoes where turma=='B';
SELECT max(nota) from avaliacoes where turma=='C';
SELECT min(nota) from avaliacoes where turma=='A';
SELECT min(nota) from avaliacoes where turma=='B';
SELECT min(nota) from avaliacoes where turma=='C';

-- Quantidade de avaliacoes que cada aluno fez
SELECT id_aluno,nome,count(nota) from avaliacoes GROUP by id_aluno;

-- media de cada turma
SELECT turma, avg(nota) from avaliacoes GROUP by turma;

-- Quantidade de alunos por turma
select turma, count(turma) from avaliacoes GROUP by turma;

--Média de cada bimestre
	SELECT bimestre, avg(nota) from avaliacoes  GROUP by bimestre;

--Média geral de cada bimestre e cada turma
SELECT turma ,bimestre, avg(nota) from avaliacoes Group by turma, bimestre;

SELECT count(*) from(SELECT id_aluno from avaliacoes GROUP by id_aluno);
