class CreateItineraryActivityJoins < ActiveRecord::Migration[7.0]
  def change
    create_table :itinerary_activity_joins do |t|
      t.references :itinerary, foreign_key: true
      t.references :activity, foreign_key: true
      t.timestamps
    end
  end
end
