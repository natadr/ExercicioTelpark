#language: pt

@all
Funcionalidade: Cadastro de Usuário Telpark

  Cenario: Validar cadastro do usuário com sucesso
    Dado que estou na página de login
    E acesso a criação de cadastro
    Quando preencho meus dados para cadastro
    E clico em registrar
    Então recebo uma mensagem para verificação de email
