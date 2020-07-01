require 'spec_helper'

feature "Giving a sticker" do
  scenario "visiting the homepage and giving a sticker" do
    visit '/'
    fill_in "name", with: "Arav"
    click_button('Submit')
    click_button('Give sticker')
    expect(page).to have_css("img[@src = 'https://img.todo-memes.com/meme-de/ANOTADO-634609.jpg']")
  end
end