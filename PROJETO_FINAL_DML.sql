--========================================================================================
-- INSERÇÕES
--========================================================================================

-- Pacientes
INSERT INTO clinica_odonto.paciente (id_paciente, cpf, nome_completo, data_nascimento)
VALUES 
    (1, '111.111.111-21', 'Gabriel Botelho', '2000-10-11'),
    (2, '111.111.111-22', 'Kenny Pavelka', '2000-10-12'),
    (3, '111.111.111-23', 'Phelipe Damasio', '2000-10-13'),
    (4, '111.111.111-24', 'João Vitor Clemente', '2000-10-14'),
    (5, '111.111.111-25', 'Adriane Tranhaqui', '2000-10-15'),
    (6, '111.111.111-26', 'João Pedro Cordeiro', '2000-10-16'),
    (7, '111.111.111-27', 'Maicon Araújo', '2000-10-17'),
    (8, '111.111.111-28', 'Victor Pereira', '2000-10-18'),
    (9, '111.111.111-29', 'Eduardo da Silva', '2000-10-19'),
    (10, '111.111.111-30', 'Júnior Peixoto', '2000-10-20');

-- Informações dos pacientes
INSERT INTO clinica_odonto.info_paciente (id_info, cep, rua, bairro, numero_rua, telefone, email)
VALUES
    (1, 25745261, 'rua1', 'bairro1', 1, '(11)91111-1111', 'Gabriel@Botelho'),
    (2, 25745262, 'rua2', 'bairro2', 2, '(11)91111-1112', 'Kenny@Pavelka'),
    (3, 25745263, 'rua3', 'bairro3', 3, '(11)91111-1113', 'Phelipe@Damasio'),
    (4, 25745264, 'rua4', 'bairro4', 4, '(11)91111-1114', 'JoãoVitor@Clemente'),
    (5, 25745265, 'rua5', 'bairro5', 5, '(11)91111-1115', 'Adriane@Tranhaqui'),
    (6, 25745266, 'rua6', 'bairro6', 6, '(11)91111-1116', 'JoãoPedro@Cordeiro'),
    (7, 25745267, 'rua7', 'bairro7', 7, '(11)91111-1117', 'Maicon@Araujo'),
    (8, 25745268, 'rua8', 'bairro8', 8, '(11)91111-1118', 'Victor@Pereira'),
    (9, 25745269, 'rua9', 'bairro9', 9, '(11)91111-1119', 'Eduardo@Silva'),
    (10, 25745200, 'rua10', 'bairro10', 10, '(11)91111-1120', 'Junior@Peixoto');

-- Dentistas
INSERT INTO clinica_odonto.dentista (id_dentista, nome_completo, cpf, cro, especialidade)
VALUES
    (1, 'João Silva', '111.111.111-11', 'CRO-RJ 12345', 'Ortodontia'),
    (2, 'Maria Oliveira', '222.222.222-22', 'CRO-SP 54321', 'Endodontia'),
    (3, 'Pedro Santos', '333.333.333-33', 'CRO-MG 67890', 'Periodontia'),
    (4, 'Ana Souza', '444.444.444-44', 'CRO-ES 98765', 'Implantodontia'),
    (5, 'Lucas Pereira', '555.555.555-55', 'CRO-PR 11223', 'Odontopediatria'),
    (6, 'Beatriz Lima', '666.666.666-66', 'CRO-RJ 44556', 'Prótese Dentária'),
    (7, 'Carlos Almeida', '777.777.777-77', 'CRO-SP 77889', 'Dentística'),
    (8, 'Juliana Costa', '888.888.888-88', 'CRO-BA 99001', 'Cirurgia Bucomaxilofacial'),
    (9, 'Rafael Rocha', '999.999.999-99', 'CRO-RS 22334', 'Estomatologia'),
    (10, 'Fernanda Alves', '101.101.101-10', 'CRO-SC 55667', 'Radiologia Odontológica');
	
-- Datas e horários
INSERT INTO clinica_odonto.data_hora (id_data_hora, id_dentista, data_hora)
VALUES
    (1, 1, '2026-01-15 09:30:00'), (8, 7, '2026-01-15 11:00:00'), (15, 3, '2026-01-16 10:00:00'),
    (2, 2, '2026-02-16 14:00:00'), (9, 8, '2026-02-02 11:30:00'), (16, 4, '2026-02-02 13:30:00'),
    (3, 3, '2026-02-05 10:00:00'), (10, 9, '2026-03-05 12:30:00'), (17, 5, '2026-03-22 15:00:00'),
    (4, 4, '2026-03-22 12:30:00'), (11, 10, '2026-03-25 09:30:00'), (18, 6, '2026-03-25 12:30:00'),
	(5, 5, '2026-01-15 09:30:00'), (12, 1, '2026-01-16 11:00:00'), (19, 7, '2026-01-16 10:00:00'),
	(6, 6, '2026-01-15 09:30:00'), (13, 2, '2026-01-15 11:00:00'), (20, 8, '2026-01-16 10:00:00'),
	(7, 9, '2026-01-15 11:00:00'), (14, 10, '2026-01-16 10:00:00');
	
-- Consultas
INSERT INTO clinica_odonto.consulta (id_data_hora, id_consulta, id_paciente, id_dentista, descricao_atendimento)
VALUES
    (2, 1, 1, 2, 'Atendimento1'), (4, 2, 1, 3, 'Atendimento2'), (6, 3, 1, 4, 'Atendimento3'),
    (3, 4, 2, 2, 'Atendimento4'), (5, 5, 3, 3, 'Atendimento5'), (7, 6, 4, 4, 'Atendimento6'),
    (4, 7, 5, 10, 'Atendimento7'), (6, 8, 5, 10, 'Atendimento8'), (8, 9, 6, 10, 'Atendimento9'),
    (5, 10, 10, 5, 'Atendimento10'),(7, 11, 10, 10, 'Atendimento11'),(9, 12, 4, 5, 'Atendimento12'),    
    (6, 13, 4, 6, 'Atendimento13'), (8, 14, 7, 4, 'Atendimento14'), (10, 15, 5, 8, 'Atendimento15'),
    (7, 16, 10, 8, 'Atendimento16'), (9, 17, 3, 8, 'Atendimento17'), (1, 18, 10, 9, 'Atendimento18'),
    (8, 19, 8, 9, 'Atendimento19'), (10, 20, 3, 10, 'Atendimento20'), (2, 21, 5, 10, 'Atendimento21'),
    (9, 22, 10, 5, 'Atendimento22'), (1, 23, 10, 5, 'Atendimento23'), (3, 24, 10, 5, 'Atendimento24'),	
    (10, 25, 10, 6, 'Atendimento25'), (2, 26, 4, 4, 'Atendimento26'), (5, 27, 3, 4, 'Atendimento27'),
    (1, 28, 10, 9, 'Atendimento28'), (3, 29, 5, 5, 'Atendimento29'), (4, 30, 2, 6, 'Atendimento30'),
    (2, 31, 8, 10, 'Atendimento31'), (4, 32, 2, 10, 'Atendimento32'), (6, 33, 7, 8, 'Atendimento33'),
    (3, 34, 10, 3, 'Atendimento34'), (5, 35, 4, 2, 'Atendimento35'), (7, 36, 4, 7, 'Atendimento36');

-- Procedimentos
INSERT INTO clinica_odonto.procedimento (nome, descricao, duracao_media)
VALUES
    ('Limpeza', 'Remoção de placa e tártaro dos dentes.', '30 min'),
    ('Restauração','Reparação de dentes com cárie.', '40 min'),
    ('Extração','Remoção de dente comprometido.', '30 min'),
    ('Canal','Tratamento da polpa dentária infectada.', '60 min'),
    ('Clareamento','Clareamento estético dos dentes.', '60 min'),
    ('Profilaxia','Limpeza preventiva com polimento.', '30 min'),
    ('Selante','Proteção contra cáries em dentes.', '20 min'),
    ('Radiografia','Exame de imagem dos dentes.', '15 min'),
    ('Ortodontia','Correção do alinhamento dental.', '30 min'),
    ('Implante','Substituição de dente por prótese.', '90 min');

-- Consulta <-> Procedimento
INSERT INTO clinica_odonto.cons_proc (id_consulta, id_procedimento)
VALUES
    (1, 1), (1, 4), (1, 2), (1, 7), (1, 3),
    (2, 1), (2, 9), (2, 8), (2, 6), (2, 7),
    (3, 3), (3, 6), (3, 8), (3, 1), (3, 10),
    (4, 3), (4, 5), (4, 10), (4, 1), (5, 3),
    (6, 4), (7, 5), (8, 6), (9, 7), (10, 4);

--========================================================================================
-- UPDATES
--========================================================================================

-- 1. Atualizar telefone de um paciente específico
UPDATE clinica_odonto.info_paciente
SET telefone = '(21)99999-0000'
WHERE id_info = 1;

-- 2. Atualizar especialidade de um dentista
UPDATE clinica_odonto.dentista
SET especialidade = 'Ortodontia Avançada'
WHERE id_dentista = 1;

-- 3. Atualizar descrição de atendimento de uma consulta
UPDATE clinica_odonto.consulta
SET descricao_atendimento = 'Consulta de rotina com limpeza'
WHERE id_consulta = 10;

--========================================================================================
-- DELETES
--========================================================================================

-- 1. Excluir um procedimento específico
DELETE FROM clinica_odonto.cons_proc
WHERE id_procedimento = 10;

-- 2. Excluir vínculo entre consulta e procedimento
DELETE FROM clinica_odonto.cons_proc
WHERE id_consulta = 10 AND id_procedimento = 4;

-- 3. Excluir uma consulta específica
DELETE FROM clinica_odonto.consulta
WHERE id_consulta = 36;
