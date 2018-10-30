Dado("que estou na página de new window") do
  visit('/windows')
end

Quando("eu clico no link Click Here") do
  @new_window = window_opened_by {click_link 'Click Here'}

end

Então("sou direcionado para outra página") do
  within_window @new_window do
    assert_text("New Window")
  end
end
