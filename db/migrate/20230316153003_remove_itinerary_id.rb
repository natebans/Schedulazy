class RemoveItineraryId < ActiveRecord::Migration[7.0]
  def change
    remove_reference :activities, :itinerary, foreign_key: true
  end
end
