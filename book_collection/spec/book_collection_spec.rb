require 'rails_helper'

RSpec.describe 'Hello world', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visit books_path
      expect(page).to have_content('Here are all your books!')
    end
  end
end