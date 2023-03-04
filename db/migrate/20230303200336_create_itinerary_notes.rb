class CreateItineraryNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :itinerary_notes do |t|
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :itinerary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
