class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :activities
  has_many :itinerary_notes
  has_many_attached :photos
end
