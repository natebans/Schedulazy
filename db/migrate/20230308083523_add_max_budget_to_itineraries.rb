class AddMaxBudgetToItineraries < ActiveRecord::Migration[7.0]
  def change
    add_column :itineraries, :max_budget, :float
  end
end
