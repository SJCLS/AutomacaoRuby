# language: pt
# encoding: UTF-8

Funcionalidade: Fazer login
-Eu como Tester.
-Quero fazer o login na plataforma.

Cenario: Fazer login com sucesso.
Dado que eu tenha um usuario  
|email| usuario@gmail.com |
|senha|!@Senha@!|
Quando eu faca login 
Entao eu verificar se estou logado
