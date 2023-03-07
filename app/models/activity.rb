class Activity < ApplicationRecord
  belongs_to :itinerary
  has_many :feedback
  has_many :activities_notes
  has_many_attached :photos
  validates :address, presence: true
  validates :categories, presence: true
  validates :price, presence: true
  validates :duration, presence: true
end
