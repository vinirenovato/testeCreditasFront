Dado("que estou na página de controles dinâmicos") do
  visit('/dynamic_controls')
end

Dado("que eu remova uma checkbox") do
  step "eu clico no botão 'remover'"
  step 'a checkbox é removida'
end

Quando("eu clico no botão {string}") do |string|
  page.find(:xpath, ".//*[@id='checkbox-example']/button").click
end

Então("a checkbox é removida") do
  assert_text("It's gone!")
end

Então("a checkbox é adicionada") do
  assert_text("It's back!")
end

Então("eu clico na checkbox") do
  page.check('checkbox')
end
