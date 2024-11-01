class LoginPage
  def initialize(driver)
    @driver = driver
  end

  def login(email, senha)
    @driver.navigate.to 'https://cursos.alura.com.br/loginForm'
    
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @driver.find_element(name: 'email').displayed? }

    @driver.find_element(name: 'email').send_keys(email)
    @driver.find_element(name: 'password').send_keys(senha)

    wait.until { @driver.find_element(name: 'entrar').enabled? }
    @driver.find_element(name: 'entrar').click
  end
end
