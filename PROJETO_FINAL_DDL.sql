--========================================================================================
-- TABELAS
--========================================================================================

CREATE TABLE clinica_odonto.info_paciente (
    id_info SERIAL PRIMARY KEY,
    cep INT NOT NULL,
    rua VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    numero_rua INT NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL
);

CREATE TABLE clinica_odonto.paciente (
    id_paciente SERIAL PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE,
    id_info INT REFERENCES clinica_odonto.info_paciente(id_info),
    nome_completo VARCHAR(40) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE clinica_odonto.dentista (
    id_dentista SERIAL PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    cro VARCHAR(20) UNIQUE NOT NULL,
    especialidade VARCHAR(100) NOT NULL
);

CREATE TABLE clinica_odonto.data_hora (
    id_data_hora SERIAL PRIMARY KEY,
    data_hora TIMESTAMP,
    id_dentista INT REFERENCES clinica_odonto.dentista(id_dentista)
);

CREATE TABLE clinica_odonto.consulta (
    id_consulta SERIAL PRIMARY KEY,
    id_paciente INT REFERENCES clinica_odonto.paciente(id_paciente),
    id_dentista INT REFERENCES clinica_odonto.dentista(id_dentista),
	id_data_hora INT REFERENCES clinica_odonto.data_hora(id_data_hora),
    descricao_atendimento VARCHAR NOT NULL
);

CREATE TABLE clinica_odonto.procedimento (
    id_procedimento SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR NOT NULL,
    duracao_media INTERVAL
);


CREATE TABLE clinica_odonto.cons_proc (
    id_consulta INT REFERENCES clinica_odonto.consulta(id_consulta),
    id_procedimento INT REFERENCES clinica_odonto.procedimento(id_procedimento)
);

