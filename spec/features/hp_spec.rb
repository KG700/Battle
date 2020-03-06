feature 'hit points' do
  scenario "can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Ben: HP 100"
  end
end
