class Home < SitePrism::Page
    element :email_logado, 'a.hidden-phone'

    def usuario_logado
        email_logado.text 
    end

end