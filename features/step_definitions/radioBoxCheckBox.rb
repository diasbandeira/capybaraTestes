
Quando("Clicar no radiobox") do
    visit('/buscaelementos/radioecheckbox')
    choose('red', allow_label_click: true)
    sleep 5
    choose('blue', allow_label_click: true)
end

Quando("Clicar no checkbox") do
    visit('/buscaelementos/radioecheckbox')
    find('label[for="black"]').click
    check('purple', allow_label_click: true)
    uncheck('purple', allow_label_click: true)
    sleep 5
end

Quando("Verificar se campo esta marcado") do
pending # Write code here that turns the phrase above into concrete actions
end
