class User < ApplicationRecord
  validates :name, presence: true
  has_many :events, inverse_of: :creator
  has_many :enrollments
  has_many :attended_events, through: :enrollments, source: :event

  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
end
