require 'rails_helper'

RSpec.describe 'Hola mundo', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visit private_events_index_path
      expect(page).to have_content('Hola mundo')
    end
  end
end