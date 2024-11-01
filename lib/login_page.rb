# lib/login_page.rb

class LoginPage
  def initialize(driver)
    @driver = driver
  end

  def login(email, senha)
    @driver.navigate.to 'https://cursos.alura.com.br/loginForm'

    # Espera até que o elemento de email esteja presente e visível
    wait = Selenium::WebDriver::Wait.new(timeout: 10) # tempo de espera de 10 segundos
    wait.until { @driver.find_element(name: 'email').displayed? }

    @driver.find_element(name: 'email').send_keys(email)
    @driver.find_element(name: 'password').send_keys(senha)

    # Espera até que o botão de login esteja clicável
    wait.until { @driver.find_element(name: 'entrar').enabled? }
    @driver.find_element(name: 'entrar').click
  end
end
