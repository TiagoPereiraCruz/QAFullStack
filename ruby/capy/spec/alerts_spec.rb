

describe 'Alertas de JS', :alerts do 

    before(:each) do 
        visit '/javascript_alerts'
    end

    it 'alerta' do 
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 1
    end

    it 'confirma alerta', :confirma do 
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 1

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        sleep 1
    end

    it 'não confirma alerta', :nao_confirma do 
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep 1

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        sleep 1

    end

    it 'prompt', :accept_prompt do 
        accept_prompt(with: 'Tiago') do 
            click_button 'Prompt'
            sleep 1
        end

        expect(page).to have_content 'Olá, Tiago'
        sleep 1
    end

    it 'dismiss prompt', :dismiss_prompt do
        dismiss_prompt() do
            click_button 'Prompt'
            sleep 1
        end

        expect(page).to have_content 'Olá, null'
        sleep 1
    end
end