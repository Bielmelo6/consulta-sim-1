require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'Criando medico com o campo email invalido' do
    medico = Medico.new nome: 'Gabriel Melo', cpf: '129342224-03', email: 'gabriel',
                        especialidade: 'Cardiologista', crm: '123456'
    assert_not medico.save
  end

  test 'Criando medico com o campo crm invalido' do
    medico = Medico.new nome: 'Gabriel Melo', cpf: '129342224-03', email: 'gabrielmelodemenezes@gmail.com',
                        especialidade: 'Cardiologista', crm: 'CRM/PE 123456'
    assert_not medico.save
  end
  # test "the truth" do
  #   assert true
  # end
end
