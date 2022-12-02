
Dado('que eu tenha um usuario') do |table|
  @email = table.rows_hash['email']
  @senha = table.rows_hash['senha']
  visit('https://cursos.alura.com.br/loginForm?urlAfterLogin=https://cursos.alura.com.br/dashboard')
end

Quando('eu faca login') do

end

Entao('eu verificar se estou logado') do

end