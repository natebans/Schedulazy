class ItineraryNote < ApplicationRecord
  belongs_to :user
  belongs_to :itinerary
  validates :description, presence: true
end
