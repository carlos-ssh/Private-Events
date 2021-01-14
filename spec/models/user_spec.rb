require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User uses name to sign' do
    it 'Valid user with his atribute' do
      expect(@user = User.new(name: 'name')).to be_valid
    end

    it 'User with name not in blank' do
      user = User.new(name: '').save
      expect(user).to eql(false)
    end
  end
end
