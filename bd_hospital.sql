-- Criando tabela profissional
CREATE TABLE profissional(
	id_profissional integer PRIMARY KEY NOT NULL,
  	nome text,
  	sobrenome text,
  	cpf text UNIQUE,
  	email text UNIQUE
);

-- Criando tabela psicologo
create TABLE psicologo(
	id_psicologo integer PRIMARY KEY NOT NULL,
  	crp text,
  	id_profissional integer NOT NULL,
  	FOREIGN KEY (id_profissional) REFERENCES profissional(id_profissional)
  	
);

-- Criando tabela medico
CREATE TABLE medico(
	id_medico integer PRIMARY KEY NOT NULL,
  	crm text,
  	id_profissional integer NOT NULL,
  	FOREIGN key(id_profissional) REFERENCES profissional(id_profissional)
);

-- Criando tabela leito
CREATE TABLE leito(
	id_leito integer PRIMARY KEY NOT NULL,
  	sala text
);

-- Criando tabela paciente
create TABLE paciente(
	id_paciente integer PRIMARY KEY NOT NULL,
  	nome text,
  	sobrenome text,
  	telefone text UNIQUE,
  	cpf text UNIQUE,
  	convenio text,
  	id_leito integer NOT NULL,
  	FOREIGN KEY(id_leito) REFERENCES leito(id_leito)
);

-- Criando tabela responsavel00
CREATE TABLE responsavel(
	id_responsavel integer PRIMARY key NOT NULL,
  	id_profissional integer NOT NULL,
  	id_paciente integer NOT NULL,
  	FOREIGN KEY(id_profissional) REFERENCES profissional(id_profissional),
  	FOREIGN KEY(id_paciente) REFERENCES paciente(id_paciente)
);

-- ----------------------------------------------------------------------

-- Inserindo dados na tabela profissional
INSERT INTO profissional (id_profissional, nome, sobrenome, cpf, email)
VALUES
    (1, 'Nome1', 'Sobrenome1', '111.111.111-11', 'email1@example.com'),
    (2, 'Nome2', 'Sobrenome2', '222.222.222-22', 'email2@example.com');

-- Inserindo dados na tabela psicologo
INSERT INTO psicologo (id_psicologo, crp, id_profissional)
VALUES
    (1, 'CRP1234', 1),
    (2, 'CRP5678', 2);

-- Inserindo dados na tabela medico
INSERT INTO medico (id_medico, crm, id_profissional)
VALUES
    (1, 'CRM5678', 1),
    (2, 'CRM9876', 2);

-- Inserindo dados na tabela leito
INSERT INTO leito (id_leito, sala)
VALUES
    (1, 'Sala1'),
    (2, 'Sala2');

-- Inserindo dados na tabela paciente
INSERT INTO paciente (id_paciente, nome, sobrenome, telefone, cpf, convenio, id_leito)
VALUES
    (1, 'Paciente1', 'Sobrenome1', '111-1111', '333.333.333-33', 'Convenio1', 1),
    (2, 'Paciente2', 'Sobrenome2', '222-2222', '444.444.444-44', 'Convenio2', 2);

-- Inserindo dados na tabela responsavel
INSERT INTO responsavel (id_responsavel, id_profissional, id_paciente)
VALUES
    (1, 1, 1),
    (2, 2, 2);
