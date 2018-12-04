
Quando("preencher o formulario") do
    visit '/users/new'
    #Localiza o elemento pelo id e envia o valor
    fill_in(id:'user_name', with:'Andre')
    find('#user_lastname').set('Dias')
    find('#user_email').send_keys('diasbandeira@gmail.com')
    
    fill_in(id:'user_address', with:'Rua XXX, 123, XXXXXX')
    find('#user_university').set('PUC')
    find('#user_profile').send_keys('QA')

    fill_in(id:'user_gender', with:'Masculino')
    find('#user_age').set('34')

    find('input[value="Criar"]').click
    sleep 2
end

Então("verificar se a mensagem eh exibida") do
   @resultado =    find('#notice')
   expect(@resultado.text).to eq ('Usuário Criado com sucesso')
end