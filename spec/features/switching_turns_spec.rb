feature 'Switching turns' do
  scenario 'switches turns' do
    sign_in_and_play
    click_button "Attack!"
    click_link "Ok"
    click_button "Attack!"
    click_link "Ok"
    expect(page).to have_content "Karla: HP 90"
  end

end
