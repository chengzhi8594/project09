class Event < ApplicationRecord
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?
  belongs_to :user
  has_many :rsvps
  has_many :users, through: :rsvps
  validates :title, presence: true, length: { minimum: 6, maximum: 100}
  validates :description, presence: true, length: {minimum: 10, maximum: 600}
  validates :address, presence: true, length: { minimum: 6, maximum: 100}
end
