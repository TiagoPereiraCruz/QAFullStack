describe "Dynamic Control", :dc do
  before(:each) do
    visit "/dynamic_controls"
  end
  it "quando habilita o campo" do

    # quando tem a propriedade disabled true o campo está desabilitado
    # quando não tem a propriedade disable (false) o campo está habilitado

    res = page.has_field? "movie", disabled: true
    puts res

    click_button "Habilita"

    fill_in "movie", with: "PASS"

    res = page.has_field? "movie", disabled: false
    puts res
  end
end
