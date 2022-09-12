Given('Estou na pagina dos medicos') do
  visit 'medicos/new'
  expect(page).to have_content('New medico')
end

And('o medico de nome {string} cpf {string} email {string} especialidade {string} crm {string} existe') do |nome, cpf, email, especialidade, crm|
  visit 'medicos/new'
  fill_in 'medico[nome]', :with => nome
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm
  click_button 'Create Medico'
  expect(page).to have_content(nome)
end

When('eu aperto no botao para remover o medico') do
  click_button 'Destroy this medico'
end

Then('eu visualizo que o medico foi removido com sucesso') do
  expect(page).to have_content('Medico was successfully destroyed')
end

Given('Estou no formulario de cadastro do medico') do
  visit 'medicos/new'
  expect(page).to have_content('New medico')
end

And('eu preencho os campos nome {string} cpf {string} email {string} especialidade {string} crm {string}') do |nome, cpf, email, especialidade, crm|
  fill_in 'medico[nome]', :with => nome
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm
end

When('eu aperto no botao para cadastrar o medico') do
  click_button 'Create Medico'
end

Then('eu visualizo que o cadastro do medico com o cpf {string} foi realizado com sucesso') do |cpf|
  expect(page).to have_content(cpf)
  expect(page).to have_content('Medico was successfully created.')
end