class UpdateActivitiesTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :activities, :categories, :category
  end
end
