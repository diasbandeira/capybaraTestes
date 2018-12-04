Quando("Clicar Select e dropDown") do
    visit('/buscaelementos/dropdowneselect')
    find('.btn.dropdown-button').click
    find('#dropdown3').click    
end

Quando("Clicar Select") do
    visit('/buscaelementos/dropdowneselect')
    select 'Chrome' , from: 'dropdown'
 
    find('option[value="2"]').select_option
end
  
Quando("Clicar campo") do
    visit('/widgets/autocomplete')
    find('#autocomplete-input').set 'Rio de '
    find('ul', text: 'Rio de Janeiro').click 
    sleep 4
end  