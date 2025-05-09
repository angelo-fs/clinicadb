-- Atualiza o status do agendamento para 'Concluído'
UPDATE agendamentos
SET status = 'Concluído'
WHERE id_agendamento = 1001;

-- Atualiza a observação da consulta relacionada
UPDATE consultas
SET observacoes = 'Consulta realizada com sucesso. Paciente estável.'
WHERE id_agendamento = 1001;
