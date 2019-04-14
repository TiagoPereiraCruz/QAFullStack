describe 'Mouse Hover', :hovers do 

    before(:each) do 
        visit '/hovers'
    end

    it 'quando passo o mouse sobre o Blade' do 
        card = find('img[alt=Blade]') # Usar [alt*=Blade] para achar o elemento que contém a palavra "Blade"
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o Pantera Negra' do 
        card = find('img[alt="Pantera Negra"]') # Usar [alt^=Pantera] para achar o elemento que começa com a palavra "Pantera"
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o Homem Aranha' do 
        card = find('img[alt="Homem Aranha"]') # Usar [alt$=Aranha] para achar o elemento que terminar com a palvra "Aranha"
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    

    after(:each) do 
        sleep 0.5 #temporário, paara verificar o resultado
    end
end