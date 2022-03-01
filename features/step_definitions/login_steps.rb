Dado('que estou na página de login') do  
    @paginas.login.load                       
end

Dado('acesso a recuperação de senha') do
    @paginas.login.clicar_link_reset
end

Dado('acesso a criação de cadastro') do
    @paginas.login.acessar_criar_conta
end

Quando("eu faço login com email e senha válidos") do  
    @massa_login = YAML.load_file("fixtures/login.yml") 
    @paginas.login.logar(@massa_login['email'], @massa_login['senha'])     
end

Quando('eu faço login com {string} e {string}') do |email, senha|
    @paginas.login.logar(email, senha) 
end

Então("devo ver a mensagem de alerta {string}") do |mensagem_esperada|                 
    expect(@paginas.login.exibir_mensagem).to include mensagem_esperada   
end

Então('recebo uma mensagem de envio de senha para o e-mail') do
    @massa_reset = YAML.load_file("fixtures/reset.yml") 
    expect(@paginas.login.exibir_mensagem_reset).to include @massa_reset['mensagem_recuperacao']    
end