class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :address
      t.string :categories
      t.integer :price
      t.integer :duration
      t.references :itinerary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
