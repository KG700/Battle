feature 'Player names' do
  scenario 'Players enter their names' do
    sign_in_and_play
    expect(page).to have_content("Karla v.s Ben")
  end
end
