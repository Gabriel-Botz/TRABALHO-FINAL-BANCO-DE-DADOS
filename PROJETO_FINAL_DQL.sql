--========================================================================================
------------------------------------- CONSULTAS ------------------------------------------
--========================================================================================


-- 1a. Quantidade de consultas por especialidade
SELECT 
    d.especialidade, 
    COUNT(c.id_consulta) AS total_consultas
FROM clinica_odonto.dentista d
JOIN clinica_odonto.consulta c
    ON d.id_dentista = c.id_dentista
GROUP BY d.especialidade
ORDER BY total_consultas DESC;


-- 2a. Quantidade de consultas por dentista
SELECT 
    d.nome_completo, 
    COUNT(c.id_consulta) AS total_consultas
FROM clinica_odonto.dentista d
LEFT JOIN clinica_odonto.consulta c
    ON d.id_dentista = c.id_dentista
GROUP BY d.nome_completo
ORDER BY total_consultas DESC;


-- 3a. Pacientes com maior número de consultas
SELECT 
    p.nome_completo, 
    COUNT(c.id_consulta) AS total_consultas
FROM clinica_odonto.paciente p
LEFT JOIN clinica_odonto.consulta c
    ON p.id_paciente = c.id_paciente
GROUP BY p.nome_completo
ORDER BY total_consultas DESC;


-- 4a. View com lista de consultas ordenadas por data

CREATE OR REPLACE VIEW clinica_odonto.vw_lista_consulta AS
SELECT 
    c.id_consulta,
    p.nome_completo AS paciente,
    d.nome_completo AS dentista,
    dh.data_hora
FROM clinica_odonto.consulta c

JOIN clinica_odonto.paciente p 
    ON c.id_paciente = p.id_paciente

JOIN clinica_odonto.dentista d 
    ON c.id_dentista = d.id_dentista

JOIN clinica_odonto.data_hora dh 
    ON c.id_data_hora = dh.id_data_hora

ORDER BY c.id_consulta;

SELECT * FROM clinica_odonto.vw_lista_consulta;


-- 5a. Média de consultas por dentista (global)

SELECT 
  ROUND (AVG (COALESCE (media_geral, 0)), 2)  AS media_geral_consultas
FROM (
	SELECT COUNT (clinica_odonto.consulta.id_dentista) AS media_geral
	FROM clinica_odonto.dentista		
	LEFT JOIN clinica_odonto.consulta
	    ON  clinica_odonto.dentista.id_dentista = clinica_odonto.consulta.id_dentista
		GROUP BY clinica_odonto.dentista.id_dentista
	);
