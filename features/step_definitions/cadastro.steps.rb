Quando('preencho meus dados para cadastro') do
    @paginas.cadastro.preencher_dados(@email, @senha, @senha)
end

Quando('clico em registrar') do
    @paginas.cadastro.criar_conta
end

Então('recebo uma mensagem para verificação de email') do
    @massa_cadastro = YAML.load_file("fixtures/cadastro.yml") 
    expect(@paginas.cadastro.msg_verificar_email).to include @massa_dados['mesg_verificar_email']  
end