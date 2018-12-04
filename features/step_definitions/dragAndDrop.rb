Quando("realizo acões com drag and drop") do
    visit '/iteracoes/draganddrop'
    @primeiroElemento = find('#winston')
    @segundoElemento = find('#dropzone')

    @primeiroElemento.drag_to(@segundoElemento)
    sleep 5
end