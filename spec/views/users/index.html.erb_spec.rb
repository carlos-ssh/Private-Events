require 'rails_helper'

RSpec.describe 'users/new', type: :view do
  describe 'create a new user template' do
    it 'renders the sign-in form' do
      render
      expect(rendered).to match 'name'
    end

    it 'renders the sign-in ' do
      render
      expect(rendered).not_to match(/HTML/)
    end
  end
end
