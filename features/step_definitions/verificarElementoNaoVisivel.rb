Então("Verifica se o texto esta nao esta visivel") do
    texto = find('#div1')
    expect(texto.text).to eql 'Você Clicou no Botão!'
    page.assert_text('Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
    find('#teste').click   
    assert_no_text('Você Clicou no Botão!')
    has_text?('Você Clicou no Botão!')
end