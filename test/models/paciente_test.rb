require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test 'Criando paciente com campos preenchidos corretamente' do
    paciente = Paciente.new nome: 'Gabriel Melo de Menezes', data_nascimento: Date.parse("Dec 6 1999"),
                            cpf: '129342224-03', email: 'gabrielmelodemenezes@gmail.com'
    assert paciente.save
  end

  test 'Criando paciente com o cpf o invalida' do
    paciente = Paciente.new nome: 'Gabriel Melo de Menezes', data_nascimento: Date.parse("Dec 6 2025"),
                            cpf: '122', email: 'gabrielmelodemenezes@gmail.com'
    assert_not paciente.save
  end
  # test "the truth" do
  #   assert true
  # end
end