# frozen_string_literal: true

class Event < ApplicationRecord
  validates_length_of :name, minimum: 3, allow_nil: false
  validates_length_of :description, minimum: 5, allow_nil: false

  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :enrollments
  has_many :attendees, through: :enrollments, source: :user
  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
end
