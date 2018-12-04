Quando("Entro no modal e verifico o texto") do
    visit '/mudancadefoco/modal'
    find('.waves-light').click
    within('#modal1') do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
        find('.modal-close').click
        sleep 5 
    end
end

Quando("Entro no iframe e preencho os campos") do
    visit '/mudancadefoco/iframe'
    within_frame('id_do_iframe') do
        fill_in(id: 'first_name', with: 'Nome')
        fill_in(id: 'last_name', with: 'Sobrenome')
    end
end
