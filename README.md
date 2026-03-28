# 🦷 Sistema de Gestão para Clínica Odontológica

## 📌 Descrição do Projeto
Este projeto consiste na modelagem e implementação de um banco de dados para uma clínica odontológica, com o objetivo de organizar e gerenciar informações relacionadas a pacientes, dentistas, consultas e procedimentos realizados.

A proposta busca simular um sistema real utilizado em clínicas, permitindo o controle de atendimentos, agendamentos e histórico de consultas de forma estruturada e eficiente.

---

## 🖼️ Modelo Conceitual 

<img width="1243" height="499" alt="image" src="https://github.com/user-attachments/assets/64a2d49c-41dd-409a-9d1e-3d6888fa2c37" />

---

## 🖼️ Modelo Lógico

<img width="1021" height="454" alt="image" src="https://github.com/user-attachments/assets/487d1fd9-978f-4076-84dd-bff8a2f4922b" />

---

## 🎓 Contexto Acadêmico
Este projeto foi desenvolvido em grupo como trabalho final da disciplina de **Banco de Dados**.

---

## 🌐 Contextualização do Cenário

Este projeto pode ser aplicado em clínicas odontológicas que buscam organizar e otimizar seus processos de atendimento. A modelagem permite gerenciar pacientes, profissionais, consultas e procedimentos de forma estruturada, garantindo melhor controle das informações e histórico de atendimentos. Em um cenário real, esse sistema pode auxiliar recepcionistas e gestores a reduzirem erros de agendamento, melhorarem o fluxo de atendimentos e proporcionarem um serviço mais eficiente aos pacientes.

---

## 💡 Possíveis Aplicações

Além de clínicas odontológicas, este sistema pode ser adaptado para diversos outros nichos que necessitam de controle de agendamentos e atendimentos, como:

- Salões de beleza e barbearias
- Clínicas veterinárias
- Clínicas de estética
- Academias e personal trainers
- Escritórios de advocacia
- Clínicas de psicologia
- Assistências técnicas

A estrutura do banco de dados permite flexibilidade para diferentes contextos, bastando adaptar as entidades conforme a necessidade do negócio.

---

## ⚙️ Funcionalidades Implementadas

- Cadastro de pacientes  
- Cadastro de dentistas  
- Controle de horários  
- Registro de consultas  
- Associação de procedimentos  
- Criação de VIEW  
- Consultas SQL analíticas  

---

## 🗂️ Estrutura do Banco de Dados

### 👤 Pacientes
- `paciente`: dados principais  
- `info_paciente`: dados complementares  

### 🦷 Dentistas
- Nome, CPF, CRO e especialidade  

### 📅 Agendamentos
- `data_hora`: horários disponíveis  
- `consulta`: registros de atendimentos  

### 🛠️ Procedimentos
- `procedimento`: lista de procedimentos  
- `cons_proc`: relação N:M  

---

## 🛠️ Tecnologias Utilizadas

- PostgreSQL  
- SQL  
- Git & GitHub  

---

## ▶️ Como Executar o Projeto

```sql
CREATE SCHEMA clinica_odonto;
```

Depois execute todo o script SQL no seu SGBD.

---

## 📊 Consultas Implementadas

1. Quantidade de consultas por especialidade  
2. Quantidade de consultas por dentista  
3. Pacientes com mais consultas  
4. VIEW de consultas  
5. Média de consultas por dentista  

---

## 📈 Exemplo de Uso

```sql
SELECT * FROM clinica_odonto.vw_lista_consulta;
```

---

## 📚 Aprendizados

- Modelagem de banco de dados  
- Relacionamentos (1:N e N:M)  
- JOINs  
- Views  
- Funções agregadas  

---

## 🚀 Melhorias Futuras

- Interface gráfica  
- API  
- Sistema de usuários  
- Módulo financeiro  

---

## 👨‍💻 Autores

👤 Gabriel Botelho
👤 Adriane Tranhaqui
👤 Marcos Paulo Mello
👤 Kenny Pavelka
👤 João Vitor Clemente
👤 Phelipe Damasio





# TRABALHO-FINAL-BANCO-DE-DADOS
# TRABALHO-FINAL-BANCO-DE-DADOS
