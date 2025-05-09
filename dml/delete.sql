-- Deletar agendamentos de um paciente
DELETE FROM agendamentos
WHERE id_paciente = 10;

-- Deletar as consultas de um paciente
DELETE FROM consultas
WHERE id_agendamento IN (
    SELECT id_agendamento FROM agendamentos WHERE id_paciente = 10
);
