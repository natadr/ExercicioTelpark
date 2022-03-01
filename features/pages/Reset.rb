class Reset < SitePrism::Page
    element :botao_recuperar_senha, '.btn.btn-info'
    element :campo_email, '#inputEmail'

    def preenhcer_email(email) 
        campo_email.set(email)  
    end

    def clicar_recuperar_senha
        botao_recuperar_senha.click 
    end
end