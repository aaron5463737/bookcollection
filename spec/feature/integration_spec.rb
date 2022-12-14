# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 25.98
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry Potter')
  end

  scenario 'valid author' do 
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 25.98
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K. Rowling')
  end

  scenario 'valid date' do 
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 25.98
    #fill_in 'published', with: "2001-03-13 00:00:00 UTC"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2001')
  end

  scenario 'valid price' do 
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 25.48
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(25.48)
  end

end