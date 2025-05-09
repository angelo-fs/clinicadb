-- Este SELECT mostra os pacientes e registros relacionados a eles (agendamentos, receitas, consultas e pagamentos)

SELECT 
    p.id_paciente,
    p.nome AS nome_paciente,
    p.cpf,
    p.uf,
    p.data_nascimento,
    
    m.id_medico,
    m.nome AS nome_medico,
    m.crm,
    
    a.id_agendamento,
    a.status,
    
    c.id_consulta,
    c.observacoes,
    
    r.id_receita,
    r.medicamento,
    r.dosagem,
    r.duracao,
    
    pg.id_pagamento,
    pg.valor,
    pg.forma_pagamento,
    pg.data_pagamento

FROM pacientes p
JOIN agendamentos a ON p.id_paciente = a.id_paciente
JOIN medicos m ON a.id_medico = m.id_medico
LEFT JOIN consultas c ON c.id_agendamento = a.id_agendamento
LEFT JOIN receitas r ON r.id_consulta = c.id_consulta
LEFT JOIN pagamentos pg ON pg.id_consulta = c.id_consulta

ORDER BY p.id_paciente;
