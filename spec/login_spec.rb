# spec/login_spec.rb

require_relative '../lib/login_page'
require 'selenium-webdriver'

RSpec.describe 'Login' do
  before(:all) do
    @driver = Selenium::WebDriver.for :chrome
    @login_page = LoginPage.new(@driver)
  end

  after(:all) do
    @driver.quit
  end

  it 'realiza login com sucesso' do
    @login_page.login('usuario.valido@gmail.com', '!@SenhaValida@!')
    # Adicione uma verificação aqui, se necessário
  end
end
