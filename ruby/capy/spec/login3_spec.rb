describe 'Login com cadastro', :login3 do

    before(:each) do 
        visit '/access'
    end
    
    it 'com data de nascimento' do


        # Método escopo 1

        # login_form = find('#login')

        # login_form.find('input[name=username]').set 'stark'
        # login_form.find('input[name=password]').set 'jarvis!'

        #m Método escopo 2 do Capybara

        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end
        
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    
        sleep 3
    end  

    it 'cadastro com sucesso' do 

        within('#signup') do
        find('input[name=username]').set 'Tiago'
        find('input[name=password]').set '123456'
        end

        click_link 'Criar Conta'

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

        sleep 3
    end
        
end