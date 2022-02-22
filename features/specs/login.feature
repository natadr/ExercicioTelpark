#language: pt

@smoke
Funcionalidade: Login Telpark

@sucesso
  Cenario: Login com sucesso ao Telpark
    Dado que estou na página de login
    Quando eu faço login com email e senha válidos
    Então devo ver o email logado na tela

@falha
  Esquema do Cenario: Login sem sucesso ao Telpark
    Dado que estou na página de login
    Quando eu faço login com <email> e <senha>
    Então devo ver a mensagem de alerta <mensagem>

    Exemplos:
      | email                      | senha             | mensagem                          |
      | "fepimenta11@gmail.com"    | "senha incorreta" | "Email ou palavra-passe inválidos"|
      | "email_incorreto@gmail.com"| "abc123"          | "Email ou palavra-passe inválidos"|
      | ""                         | "abc123"          | "O email é obrigatório"           |
      | "fepimenta11@gmail.com"    | ""                | "A palavra-passe é obrigatória"   |



# colocar no git
# incluir relatorio
# fazer mais cenarios depois 
