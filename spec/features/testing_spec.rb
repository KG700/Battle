feature 'Testing' do
  scenario 'Test set-up' do
    visit('/')
    expect(page).to have_content('Testing Infrustructure working!')
  end
end
