class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
