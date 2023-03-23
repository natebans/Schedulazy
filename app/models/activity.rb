class Activity < ApplicationRecord
  has_many :itinerary_activity_joins
  has_many :feedback
  has_many :activities_notes
  has_many_attached :photos
  validates :Title, presence: true
  validates :link, presence: true
end
