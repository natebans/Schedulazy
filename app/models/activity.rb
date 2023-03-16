class Activity < ApplicationRecord
  has_many :itinerary_activity_joins
  has_many :feedback
  has_many :activities_notes
  has_many_attached :photos
  validates :address, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
