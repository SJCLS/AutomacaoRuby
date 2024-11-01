require_relative '../lib/login_page'
require 'selenium-webdriver'

RSpec.describe 'Login' do
  let(:driver) { Selenium::WebDriver.for :chrome }
  let(:login_page) { LoginPage.new(driver) }

  after(:each) { driver.quit }

  it 'realiza login com sucesso' do
    login_page.login('usuario.valido@gmail.com', '!@SenhaValida@!')
    # Adicione uma verificação aqui, se necessário
  end
end
