Quando("acessar a url buscar elementos") do
    visit ('/buscaelementos/botoes')
end

Então("verificar se os elementos estão disponiveis") do
    #localiza elemento pela classe do css
    page.all(:css , '.btn')
 
    #Busca um elemento mapeado, utilizando o id
    find('#teste')
    
    #Busca elemento pelo id
    find_by_id('teste')

    #busca elemento button pela classe
    find_button(class: 'btn waves-light')   

    #buscar primeiro elemento q contenha o paramentro 
    first('.btn')

    #busca por link
    find_link(href: 'https://www.udemy.com/automacao-de-testes-com-capybara-cucumber-e-ruby/')

end