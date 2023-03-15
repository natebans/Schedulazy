class ItineraryActivityJoin < ApplicationRecord
  belongs_to :itinerary
  belongs_to :activity
end
