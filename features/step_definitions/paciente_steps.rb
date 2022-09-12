Given('Estou no formulario de cadastro do paciente') do
  visit 'pacientes/new'
  expect(page).to have_content('New paciente')
end

And('eu preencho os campos nome {string} data_nascimento {string} cpf {string} email {string} logradouro {string} complemento {string} cep {string} bairro {string} cidade {string}') do |nome, data_nascimento, cpf, email, logradouro, complemento, cep, bairro, cidade|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => data_nascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
end

When('eu aperto no botao para cadastrar o paciente') do
  click_button 'Create Paciente'
end

Then('eu visualizo que o cadastro foi realizado com sucesso') do
  expect(page).to have_content('Paciente was successfully created.')
end

Given('Estou na pagina dos pacientes') do
  visit 'pacientes/new'
  expect(page).to have_content('New paciente')
end

And('o paciente de nome {string} data_nascimento {string} cpf {string} email {string} logradouro {string} complemento {string} cep {string} bairro {string} cidade {string} existe') do |nome, data_nascimento, cpf, email, logradouro, complemento, cep, bairro, cidade|
  visit 'pacientes/new'
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => data_nascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  click_button 'Create Paciente'
  expect(page).to have_content(nome)
end

When('eu aperto no botao para remover o paciente de nome {string}') do |nome|
  expect(page).to have_content(nome)
  click_button "Destroy this paciente"
end

Then('eu visualizo que o paciente foi removido com sucesso') do
  expect(page).to have_content('Paciente was successfully destroyed')
end