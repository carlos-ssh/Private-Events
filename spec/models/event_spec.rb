# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Validations of events' do
    it 'Event with name not in blank' do
      event = Event.new(name: '', date: Date.tomorrow, location: 'anywhere', description: 'anything').save
      expect(event).to eql(false)
    end

    it 'Event with description not in blank' do
      event = Event.new(name: 'carlos', date: Date.tomorrow, location: 'anywhere', description: '').save
      expect(event).to eql(false)
    end
  end
end
