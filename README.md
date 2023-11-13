# banco de dados - SQL

## Comandos basicos na linguagem SQL

**CREATE TABLE:** Cria uma nova tabela no banco de dados.
Exemplo:
```sql
CREATE TABLE nome_da_tabela (
    coluna1 tipo_de_dado,
    coluna2 tipo_de_dado,
    ...
);
```

**SELECT:** Usado para recuperar dados de um banco de dados. É o comando principal para consultas.
Exemplo:
```sql
SELECT * FROM tabela;
```

**INSERT INTO:** Usado para adicionar novos registros a uma tabela.
Exemplo:
```sql
INSERT INTO tabela (coluna1, coluna2) VALUES (valor1, valor2);
```

**UPDATE:** Altera dados existentes em uma tabela.
Exemplo:
```sql
UPDATE tabela SET coluna = novo_valor WHERE condição;
```

**DELETE:** Remove registros de uma tabela
Exemplo:
```sql
DELETE FROM tabela WHERE condição;
```

**ALTER TABLE:** Modifica uma tabela existente (adiciona, remove ou modifica colunas).
Exemplo:
```sql
ALTER TABLE nome_da_tabela ADD coluna tipo_de_dado;
```

**WHERE:** Utilizado para impor condições em consultas para filtrar os resultados.
Exemplo:
```sql
SELECT * FROM tabela WHERE coluna = valor;
```


