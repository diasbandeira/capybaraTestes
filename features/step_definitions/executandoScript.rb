Quando("eu uso um script") do
    visit '/outros/scroll'
    page.execute_script("window.scrollBy(0,3500)")
    
    @resultado = page.evaluate_script('4 + 4')
    puts @resultado

end