Before do   
    @email = Faker::Internet.email
    @senha = Faker::Internet.password(8)
    @paginas = Paginas.new
end