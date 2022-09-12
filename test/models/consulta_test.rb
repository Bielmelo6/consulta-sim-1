require "test_helper"

class ConsultumTest < ActiveSupport::TestCase

  test 'Criando consulta com os campos do medico preenchidos errado' do
    paciente = Paciente.new nome: 'Gabriel Melo de Menezes', data_nascimento: Date.parse("Dec 6 1999"),
                            cpf: '129342224-03', email: 'gabrielmelodemenezes@gmail.com'
    assert paciente.save
    medico = Medico.new nome: 'Arthur Luís', cpf: '567', email: 'arthur',
                        especialidade: 'Ortopedista', crm: 'CRM/PE212'
    assert_not medico.save
    consulta = Consulta.new data: Date.parse("Sep 12 2022"), horario: '15:00', paciente_id: paciente.id, medico_id: medico.id
    assert_not consulta.save
  end

  test 'Criando consulta com os campos do paciente preenchidos errado' do
    paciente = Paciente.new nome: 'Gabriel Melo de Menezes', data_nascimento: Date.parse("Dec 6 1999"),
                            cpf: '56', email: 'gab'
    assert_not paciente.save
    medico = Medico.new nome: 'Arthur Luís', cpf: '129342224-03', email: 'arthurtuteres@gmail.com',
                        especialidade: 'Ortopedista', crm: '123456'
    assert medico.save
    consulta = Consulta.new data: Date.parse("Sep 12 2022"), horario: '15:00', paciente_id: paciente.id, medico_id: medico.id
    assert_not consulta.save
  end
  # test "the truth" do
  #   assert true
  # end
end
