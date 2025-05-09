-- Pacientes
INSERT INTO pacientes (id_paciente, cpf, nome, uf, data_nascimento) VALUES
(1, '123.456.789-00', 'João Silva', 'SP', '1985-06-15'),
(2, '234.567.890-11', 'Maria Oliveira', 'RJ', '1992-09-22'),
(3, '345.678.901-22', 'Carlos Souza', 'MG', '1980-01-10'),
(4, '456.789.012-33', 'Ana Santos', 'BA', '1995-04-18'),
(5, '567.890.123-44', 'Fernanda Lima', 'RS', '2000-12-30'),
(6, '678.901.234-55', 'Pedro Rocha', 'PR', '1978-11-05'),
(7, '789.012.345-66', 'Juliana Costa', 'PE', '1999-03-27'),
(8, '890.123.456-77', 'Lucas Mendes', 'CE', '1987-07-19'),
(9, '901.234.567-88', 'Isabela Martins', 'GO', '1990-08-02'),
(10, '012.345.678-99', 'Rafael Almeida', 'SC', '1982-02-11');

-- Receitas
INSERT INTO receitas (id_receita, id_consulta, medicamento, dosagem, duracao) VALUES
(1, 1, 'Paracetamol', '500mg, 3x ao dia', '5 dias'),
(2, 2, 'Amoxicilina', '875mg, 2x ao dia', '7 dias'),
(3, 3, 'Não aplicável', 'Consulta cancelada', '0 dias'),
(4, 4, 'Losartana', '50mg, 1x ao dia', '30 dias'),
(5, 5, 'Polivitamínico', '1 comprimido ao dia', '60 dias'),
(6, 6, 'Ibuprofeno', '400mg, 3x ao dia', '7 dias'),
(7, 7, 'Fluoxetina', '20mg, 1x ao dia', '90 dias'),
(8, 8, 'Consulta não realizada', 'Sem receita', '0 dias'),
(9, 9, 'Metformina', '850mg, 2x ao dia', 'indeterminado'),
(10, 10, 'Atorvastatina', '10mg, 1x ao dia', '90 dias');

-- Consultas
INSERT INTO consultas (id_consulta, id_agendamento, observacoes) VALUES
(1, 1001, 'Paciente com sintomas de gripe leve.'),
(2, 1002, 'Retorno pós-cirurgia. Cicatrização boa.'),
(3, 1003, 'Consulta cancelada pelo paciente.'),
(4, 1004, 'Avaliação de pressão arterial.'),
(5, 1005, 'Exame de rotina. Sem alterações.'),
(6, 1006, 'Paciente relatou dores lombares.'),
(7, 1007, 'Acompanhamento de tratamento para ansiedade.'),
(8, 1008, 'Consulta não realizada. Médico ausente.'),
(9, 1009, 'Revisão de exames laboratoriais.'),
(10, 1010, 'Primeira consulta. Paciente com histórico familiar de diabetes.');

-- Agendamentos
INSERT INTO agendamentos (id_paciente, id_medico, id_agendamento, status) VALUES
(1, 1, 1001, 'Agendado'),
(2, 2, 1002, 'Concluído'),
(3, 1, 1003, 'Cancelado'),
(4, 3, 1004, 'Agendado'),
(5, 4, 1005, 'Concluído'),
(6, 2, 1006, 'Agendado'),
(7, 5, 1007, 'Agendado'),
(8, 3, 1008, 'Cancelado'),
(9, 4, 1009, 'Concluído'),
(10, 1, 1010, 'Agendado');

-- Pagamentos
INSERT INTO pagamentos (id_pagamento, id_consulta, valor, forma_pagamento, data_pagamento) VALUES
(1, 1, 150.00, 'Cartão de Crédito', '2025-05-01'),
(2, 2, 200.00, 'Dinheiro', '2025-05-02'),
(3, 3, 0.00, 'Consulta cancelada', NULL),
(4, 4, 120.00, 'PIX', '2025-05-03'),
(5, 5, 130.00, 'Cartão de Débito', '2025-05-04'),
(6, 6, 180.00, 'Cartão de Crédito', '2025-05-04'),
(7, 7, 250.00, 'Plano de Saúde', '2025-05-05'),
(8, 8, 0.00, 'Consulta não realizada', NULL),
(9, 9, 160.00, 'PIX', '2025-05-06'),
(10, 10, 190.00, 'Cartão de Crédito', '2025-05-07');

-- Médicos
INSERT INTO medicos (id_medico, nome, crm) VALUES
(1, 'Dra. Maísa', '123456-SP'),
(2, 'Dr. João Luis', '473246-RJ'),
(3, 'Dr. Pedro', '3218746-MG'),
(4, 'Dra. Maria', '192839-CE'),
(5, 'Dr. Soares', '123876-PE'),
(6, 'Dra. Helena', '128357-AM'),
(7, 'Dr. Paulo', '968585-RR'),
(8, 'Dr. Danilo', '138473-PI'),
(9, 'Dr. Rios', '437283-MA'),
(10, 'Dra. Luiza', '447348-RS');

-- Especialidades
INSERT INTO especialidades (id_especialidades, nome) VALUES
(1, 'Cardiologia'),
(2, 'Oncologia'),
(3, 'Clínico Geral'),
(4, 'Dermatologia'),
(5, 'Oftalmologia'),
(6, 'Pediatria'),
(7, 'Neurologia'),
(8, 'Psiquiatria'),
(9, 'Endocrinologia'),
(10, 'Infectologia');
