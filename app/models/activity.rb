class Activity < ApplicationRecord
  belongs_to :itinerary
  has_many :feedback
  has_many :activities_notes
end
