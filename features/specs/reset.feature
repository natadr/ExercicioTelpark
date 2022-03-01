#language: pt

@all
Funcionalidade: Reset de senha Telpark

  Cenário: Validar recuperação de senha com sucesso
    Dado que estou na página de login
    E acesso a recuperação de senha 
    Quando insiro meus dados de acesso 
    E clico em recupar senha
    Então recebo uma mensagem de envio de senha para o e-mail 
