Quando("eu faco upload de arquivo") do
    visit '/outros/uploaddearquivos'
    #attach_file('upload','/home/andre/Ruby/capybaraTestes/features/imagem.jpg', make_visible: true)
    
    @foto = File.join(Dir.pwd, 'features/imagem.jpg')
    attach_file('upload',@foto, make_visible: true)
    sleep 5
end