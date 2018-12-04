Quando("Clicar no botao") do
    visit '/buscaelementos/botoes'
    find('#teste').click    
end

Então("Verifica se o texto esta Visivel") do
    texto = find('#div1')
    expect(texto.text).to eql 'Você Clicou no Botão!'
    page.assert_text('Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
end
