# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  has_many :events, inverse_of: :creator
  has_many :enrollments
  has_many :attended_events, through: :enrollments, source: :event
end
