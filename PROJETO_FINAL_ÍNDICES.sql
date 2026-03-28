--========================================================================================
-- ÍNDICES
--========================================================================================

-- Índice para acelerar buscas por CPF de paciente
CREATE INDEX idx_paciente_cpf
ON clinica_odonto.paciente (cpf);

-- Índice para melhorar consultas por data e hora
CREATE INDEX idx_data_hora
ON clinica_odonto.data_hora (data_hora);