class CreateActivityNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_notes do |t|
      t.string :description
      t.references :activity, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
