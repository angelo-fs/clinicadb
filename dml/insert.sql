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
