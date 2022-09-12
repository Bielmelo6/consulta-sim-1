Feature:
  As a medico
  I want to criar, deletar ou editar meu cadastro
  So that posso manter meu cadastro correto e atualizado

  Scenario: remover medico
    Given Estou na pagina dos medicos
    And o medico de nome 'Gabriel Melo de Menezes' cpf '129342224-03' email 'gabrielmelodemenezes@gmail.com' especialidade 'Cardiologista' crm '123456' existe
    When eu aperto no botao para remover o medico
    Then eu visualizo que o medico foi removido com sucesso

  Scenario: remover medico
    Given Estou na pagina dos medicos
    And o medico de nome 'Simone Karla de Melo' cpf '129342224-03' email 'simonekarlademelo@gmail.com' especialidade 'Geriatra' crm '123456' existe
    When eu aperto no botao para remover o medico
    Then eu visualizo que o medico foi removido com sucesso

  Scenario: cadastrar medico
    Given Estou no formulario de cadastro do medico
    And eu preencho os campos nome 'Arthur Luis de Melo' cpf '129342224-03' email 'arthurtuteres@gmail.com' especialidade 'Pediatra' crm '123456'
    When eu aperto no botao para cadastrar o medico
    Then eu visualizo que o cadastro do medico com o cpf '129342224-03' foi realizado com sucesso

  Scenario: cadastrar medico
    Given Estou no formulario de cadastro do medico
    And eu preencho os campos nome 'Jose Ricardo Alba' cpf '129342224-03' email 'josericardo@gmail.com' especialidade 'Neurologista' crm '123456'
    When eu aperto no botao para cadastrar o medico
    Then eu visualizo que o cadastro do medico com o cpf '129342224-03' foi realizado com sucesso
