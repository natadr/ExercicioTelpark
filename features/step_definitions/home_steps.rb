Então("devo ver o email logado na tela") do 
    @massa_login = YAML.load_file("fixtures/login.yml")
    expect(@paginas.home.usuario_logado).to eql @massa_login['logado']
end