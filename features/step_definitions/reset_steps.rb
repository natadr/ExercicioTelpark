Quando('insiro meus dados de acesso') do
    @massa_login = YAML.load_file("fixtures/login.yml") 
    @paginas.reset.preenhcer_email(@massa_login['email'])  
end

Quando('clico em recupar senha') do
    @paginas.reset.clicar_recuperar_senha
end