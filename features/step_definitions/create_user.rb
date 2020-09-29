When("i create a user") do
    user.load
    user.register_user
 
    sleep(5)
end

Then("i verify if the user was registered") do
    @text= find('#notice')
    expect(@text.text).to eql 'Usuário Criado com sucesso'
end