class Activity < ApplicationRecord
  belongs_to :itinerary
  has_many :feedback
  has_many :activities_notes
  has_many_attached :photos
end
