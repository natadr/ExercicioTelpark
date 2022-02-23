class Login < SitePrism::Page         
    set_url '/login?0'                           
    element :campo_email, '#inputEmail'      
    element :campo_senha, '#inputPassword' 
    element :mensagem_erro, '.error-box'
    element :botao_entrar, '.btn.btn-info.btn-login.btn-large'
    element :link_reset_senha, '[href="reset/"]'
    element :mensagem_reset_sucesso, 'li.errorlevel.feedbackPanelSUCCESS'
    element :botao_criar_conta, '.login .control-group.first .controls .btn.btn-info.btn-large'
    

    def logar(email, senha) 
    campo_email.set(email)  
    campo_senha.set(senha) 
    botao_entrar.click 
    end

    def exibir_mensagem
        mensagem_erro.text  
    end

    def clicar_link_reset
        link_reset_senha.click
    end

    def exibir_mensagem_reset
        mensagem_reset_sucesso.text  
    end

    def acessar_criar_conta
        botao_criar_conta.click 
    end
end