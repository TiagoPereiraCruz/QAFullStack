
describe 'Teclado', :key do
    before(:each) do
        visit '/key_presses'
    end

    it 'enviando simbolos' do 
        teclas = %i[tab escape space enter shift control alt]
        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end
    end

    it 'enviando letras' do 
        letras = %w[a s d f g h j k l]

        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1
        end
    end

    it 'enviando numeros' do
        num = %w[1 2 3 4 5 6 7 8 9 0]

        num.each do |n|
            find('#campo-id').send_keys n
            expect(page).to have_content 'You entered: ' + n.to_s.upcase
            sleep 1
        end
    end

    it 'enviando letra sem array', :semarray do 

        find('#campo-id').send_keys 'd'
        expect(page).to have_content 'You entered: D'
        sleep 1

        find('#campo-id').send_keys :space
        expect(page).to have_content 'You entered: SPACE'
        sleep 1

        find('#campo-id').send_keys '1'
        expect(page).to have_content 'You entered: 1'
        sleep 1
    end
end