
require_relative 'helper.rb'

Before do   
    @email = Faker::Internet.email
    @senha = Faker::Internet.password(8)
    @paginas = Paginas.new
    #@massa_dados = YAML.load_file("fixtures") 
end

After do |scenario|
    @helper = Helper.new
    @nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    @helper.take_screenshot(@nome, 'screenshots/test_failed') if   scenario.failed?
    unless @helper.take_screenshot(@nome, 'screenshots/test_passed')
end
end