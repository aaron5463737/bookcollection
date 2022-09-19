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
  
end