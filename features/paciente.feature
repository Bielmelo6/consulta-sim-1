Feature:
  As a paciente
  I want to criar, deletar ou editar meu cadastro
  So that posso manter meu cadastro correto e atualizado

  Scenario: cadastrar paciente
    Given Estou no formulario de cadastro do paciente
    And eu preencho os campos nome 'Gabriel Melo de Menezes' data_nascimento '06 12 1999' cpf '123456789-10' email 'gabrielmelodemenezes@gmail.com' logradouro 'Rua dos Guararapes' complemento 'nº 705, ap 7' cep '55000-000' bairro 'Boa Vista' cidade 'Garanhuns'
    When eu aperto no botao para cadastrar o paciente
    Then eu visualizo que o cadastro foi realizado com sucesso

  Scenario: cadastrar paciente
    Given Estou no formulario de cadastro do paciente
    And eu preencho os campos nome 'Simone Karla de Melo' data_nascimento '15 08 1980' cpf '123456789-10' email 'simonekarlademelo@gmail.com' logradouro 'Rua Laura Ferreira de Lima' complemento 'nº 256' cep '55000-000' bairro 'Agamenom Magalhães' cidade 'Caruaru'
    When eu aperto no botao para cadastrar o paciente
    Then eu visualizo que o cadastro foi realizado com sucesso

  Scenario: remover paciente
    Given Estou na pagina dos pacientes
    And o paciente de nome 'Arthur Luis de Melo' data_nascimento '03 11 2010' cpf '123456789-10' email 'arthurtuteres@gmail.com' logradouro 'Avenida Mestre Vitalino' complemento 'nº 280' cep '55000-000' bairro 'Pinheiropolis' cidade 'Caruaru' existe
    When eu aperto no botao para remover o paciente de nome 'Arthur Luis de Melo'
    Then eu visualizo que o paciente foi removido com sucesso

  Scenario: remover paciente
    Given Estou na pagina dos pacientes
    And o paciente de nome 'Ananias Lira de Menezes Jr' data_nascimento '31 08 1970' cpf '123456789-10' email 'juniorlira@gmail.com' logradouro 'Avenida Agamenom Magalhães' complemento 'nº 405' cep '55000-000' bairro 'Indianopolis' cidade 'Caruaru' existe
    When eu aperto no botao para remover o paciente de nome 'Ananias Lira de Menezes Jr'
    Then eu visualizo que o paciente foi removido com sucesso