Quando("acessar a url") do
    visit '/treinamento/home'
    end

Então("verificar se estou na pagina correta") do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home')
end