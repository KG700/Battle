feature 'Attack' do
  scenario 'attack player 2 and get confirmation' do
    sign_in_and_play
    click_link "Attack!"
    expect(page).to have_content('Karla has attacked Ben!!')
  end
end

feature 'Attacking' do
  scenario "when Karla attacks Ben, his HP reduces to 50" do
    sign_in_and_play
    click_link "Attack!"
    click_link "Ok"
    expect(page).to have_content "Ben: HP 50"
  end
end
