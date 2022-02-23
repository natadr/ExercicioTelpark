class Cadastro < SitePrism::Page
    element :mensagem_ver_email, '#myModalLabel'
    element :botao_registrar, '.btn.btn-info.btn-login.btn-large'
    element :campo_email, '#inputEmail'      
    element :campo_senha, '[name="password-container:password"]' 
    element :campo_senha_repetida, '[name="password-confirm-container:password_confirm"]'
    
    def preencher_dados(email, senha, senha_2)
        campo_email.set(email)  
        campo_senha.set(senha) 
        campo_senha_repetida.set(senha_2) 
    end

    def criar_conta
        botao_registrar.click 
    end

    def msg_verificar_email
        mensagem_ver_email.text 
    end
end