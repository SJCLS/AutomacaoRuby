Dado('que eu tenha um usuário') do |table|
  @usuario = table.rows_hash['email']
  @senha = table.rows_hash['senha']
  visit('https://cursos.alura.com.br/loginForm')
end

Quando('eu faço login') do
  fill_in 'email', with: @usuario
  fill_in 'password', with: @senha
  click_button 'Entrar'  
end

Então('eu verifico se estou logado com sucesso') do
  expect(page).to have_content('Bem-vindo')
end
