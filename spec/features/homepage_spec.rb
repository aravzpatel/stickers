require 'spec_helper'

feature "Giving a sticker" do
  scenario "visiting the homepage and giving a sticker" do
    visit '/'
    click_button('Give sticker')
    expect(page).to have_css("img[@src = 'https://img.todo-memes.com/meme-de/ANOTADO-634609.jpg']")
  end
end