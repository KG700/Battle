feature 'losing' do
  scenario 'losing player sees a lose message' do
    sign_in_and_play
    19.times do
      click_button "Attack!"
      click_link "Ok"
    end
    expect(page).to have_content "Ben has lost!!!"
  end
end
