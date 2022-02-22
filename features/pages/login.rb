class Login < SitePrism::Page         
    set_url '/login?0'                           
    element :campo_email, '#inputEmail'      
    element :campo_senha, '#inputPassword' 
    element :mensagem, '.error-box'
    

    def logar(email, senha) 

    campo_email.send_keys(email)  
    campo_senha.send_keys(senha) 
    click_button 'Entrar' 
    end

    def exibir_mensagem
        wait_until_mensagem_visible
        mensagem.text  
    end
end