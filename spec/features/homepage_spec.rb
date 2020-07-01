feature "creating a user" do
  scenario "inputting a user into the application" do
    visit '/'
    fill_in "name", with: "Arav"
    click_button('Submit')
    expect(page).to have_content "Welcome Arav"
  end
end