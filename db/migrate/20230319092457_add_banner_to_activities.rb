class AddBannerToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :banner, :string
  end
end
