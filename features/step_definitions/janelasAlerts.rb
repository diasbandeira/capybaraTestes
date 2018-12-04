Quando("entro na janela e verifico a mensagem") do
    visit '/mudancadefoco/janela'
    #registra evento q abriu  a janela
    janela = window_opened_by do   
        click_link 'Clique aqui'
    end

    #muda o foco
    within_window janela do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        janela.close
    end

    #segunda opçao

    click_link 'Clique aqui'

    switch_to_window windows.last

    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    windows.last.close

end
  
Quando("entro no alert verifico e faco a ação") do
    visit('/mudancadefoco/alert')
    find('button[onclick="jsAlert()"]').click
    page.accept_alert

    find('button[onclick="jsConfirm()"]').click
    page.dismiss_confirm

    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Andre')
    page.dismiss_prompt

end
  