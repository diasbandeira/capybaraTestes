Quando("move o mouse e clicar sobre figura") do
    visit('/iteracoes/mousehover')
    #find('.activator').hover
    
    find('.activator').hover.click
    sleep 3
end