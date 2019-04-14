

describe 'caixa de opções', :dropdown do 


    it 'Item especifico simples' do 
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 # temporário
    end

    it 'Item especifico com o find' do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3 # temporário
    end

    it 'qualquer item', :sample do 
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 2 # temporário
    end
end