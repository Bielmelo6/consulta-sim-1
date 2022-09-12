Feature: consulta
  As usuario
  I want to registrar uma consulta
  So that o usuario pode registrar uma consulta para o paciente desejado com o medico desejado

  Scenario: registrar uma consulta
    Given O paciente de nome: 'Gabriel Melo de Menezes' data_nascimeto: '06-12-1999' cpf: '123456789-10' email: 'gabrielmelodemenezes@gmail.com' logradouro 'Rua dos Guararapes' complemento 'nº 705, ap 7' cep '55000-000' bairro 'Boa Vista' cidade 'Garanhuns' existe
    And o medico de nome 'Arthur Luis de Melo' cpf '123456789-10' email 'arthurtuteres@gmail.com' especialidade 'Pediatra' e crm '123456' existe
    When estou na pagina do formulario de nova consulta
    When eu preencho os campos de data '12 11 2022' horario '16:00' medico 'Arthur Luis de Melo' e paciente 'Gabriel Melo de Menezes'
    And clico em no botao de criar a consulta
    Then eu vejo uma mensagem que a consulta foi criada com sucesso

  Scenario: registrar uma consulta
    Given O paciente de nome: 'Ananias Lira de Menezes Jr' data_nascimeto: '31 08 1970' cpf: '123456789-10' email: 'juniorlira@gmail.com' logradouro 'Avenida Agamenom Magalhães' complemento 'nº 405' cep '55000-000' bairro 'Indianopolis' cidade 'Caruaru' existe
    And o medico de nome 'Simone Karla de Melo' cpf '123456789-10' email 'simonekarlademelo@gmail.com' especialidade 'Geriatra' e crm '123456' existe
    When estou na pagina do formulario de nova consulta
    When eu preencho os campos de data '25 12 2022' horario '15:00' medico 'Simone Karla de Melo' e paciente 'Ananias Lira de Menezes Jr'
    And clico em no botao de criar a consulta
    Then eu vejo uma mensagem que a consulta foi criada com sucesso

  Scenario: marcar uma consulta sem escolher o medico
    Given O paciente de nome: 'Ananias Lira de Menezes Jr' data_nascimeto: '31 08 1970' cpf: '123456789-10' email: 'juniorlira@gmail.com' logradouro 'Avenida Agamenom Magalhães' complemento 'nº 405' cep '55000-000' bairro 'Indianopolis' cidade 'Caruaru' existe
    And o medico de nome 'Simone Karla de Melo' cpf '123456789-10' email 'simonekarlademelo@gmail.com' especialidade 'Geriatra' e crm '123456' existe
    When estou na pagina do formulario de nova consulta
    When When eu preencho os campos de data '25 12 2022', horario '15:00', medico '' e paciente 'Ananias Lira de Menezes Jr'
    And clico em criar consulta
    Then eu vejo uma mensagem de que o medico é requerido

  Scenario: marcar uma consulta sem escolher o medico
    Given O paciente de nome: 'Gabriel Melo de Menezes' data_nascimeto: '06-12-1999' cpf: '123456789-10' email: 'gabrielmelodemenezes@gmail.com' logradouro 'Rua dos Guararapes' complemento 'nº 705, ap 7' cep '55000-000' bairro 'Boa Vista' cidade 'Garanhuns' existe
    And o medico de nome 'Arthur Luis de Melo' cpf '123456789-10' email 'arthurtuteres@gmail.com' especialidade 'Pediatra' e crm '123456' existe
    When estou na pagina do formulario de nova consulta
    When When eu preencho os campos de data '12 11 2022', horario '16:00', medico '' e paciente 'Gabriel Melo de Menezes'
    And clico em criar consulta
    Then eu vejo uma mensagem de que o medico é requerido