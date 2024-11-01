# spec/spec_helper.rb

require 'selenium-webdriver'
require_relative '../config/setup' # Carrega a configuração do driver

RSpec.configure do |config|
  config.before(:each) do
    @driver = setup_driver # Chama a função de configuração do driver
  end

  config.after(:each) do
    @driver.quit
  end
end
