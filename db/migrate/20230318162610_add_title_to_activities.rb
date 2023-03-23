class AddTitleToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :Title, :string
    add_column :activities, :link, :string
    add_column :activities, :photo, :string
    add_column :activities, :description, :string
  end
end
