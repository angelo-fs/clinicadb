CREATE TABLE especialidades (
	id_especialidade INT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE pacientes (
	id_paciente SERIAL PRIMARY KEY,
	cpf VARCHAR(14) UNIQUE NOT NULL,
	nome VARCHAR(100) NOT NULL,
	uf CHAR(2),
	data_nascimento DATE
);

CREATE TABLE medicos (
	id_medico INT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	crm VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE agendamentos (
	id_paciente INT,
	id_medico INT,
	id_agendamento INT PRIMARY KEY,
	status VARCHAR(20) DEFAULT 'Agendado',
	FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente),
	FOREIGN KEY (id_medico) REFERENCES medicos (id_medico)
);

CREATE TABLE consultas (
	id_consulta INT PRIMARY KEY,
	id_agendamento INT UNIQUE,
	observacoes TEXT,
	FOREIGN KEY (id_agendamento) REFERENCES agendamentos (id_agendamento)
);

CREATE TABLE receitas (
	id_receita INT PRIMARY KEY,
	id_consulta INT,
	medicamento TEXT NOT NULL,
	dosagem TEXT NOT NULL,
	duracao TEXT,
	FOREIGN KEY (id_consulta) REFERENCES consultas (id_consulta)
);

CREATE TABLE pagamentos (
	id_pagamento INT PRIMARY KEY,
	id_consulta INT,
	valor DECIMAL(10,2),
	forma_pagamento VARCHAR(50),
	data_pagamento DATE,
	FOREIGN KEY (id_consulta) REFERENCES consultas (id_consulta)
);
