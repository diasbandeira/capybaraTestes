Quando("acessar a url buscar buscar botao e clicar") do
    visit '/'

    #clica no link ou botao q contem o texto
    click_on('Começar Automação Web')
    visit '/buscaelementos/botoes'

    #clica no botao da classe informada
    click_button(class: 'btn waves-light')

    #Localiza o elemento e clica
    find('a[onclick="ativaedesativa1()"]').click

    #Localiza o elemento e click duplo
    find('a[onclick="ativaedesativa2()"]').double_click

    #Localiza o elemento e click botão direito
    find('a[onclick="ativaedesativa3()"]').right_click

    visit '/'
    #clica no link q contem o texto
    click_link('Github')

    sleep 5
end
Então("verificar se link se acao sera executada") do

end