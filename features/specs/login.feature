# language: pt
# encoding: UTF-8

Funcionalidade: Fazer login
  Eu como Tester
  Quero fazer o login na plataforma

  Cenario: Fazer login com sucesso
    Dado que eu tenha um usuário
      | email             | usuario.valido@gmail.com |
      | senha             | !@SenhaValida@!          |
    Quando eu faço login
    Então eu verifico se estou logado com sucesso
