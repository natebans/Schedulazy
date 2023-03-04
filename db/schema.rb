# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_03_200732) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "address"
    t.string "categories"
    t.integer "price"
    t.integer "duration"
    t.bigint "itinerary_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["itinerary_id"], name: "index_activities_on_itinerary_id"
  end

  create_table "activity_notes", force: :cascade do |t|
    t.string "description"
    t.bigint "activity_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_activity_notes_on_activity_id"
    t.index ["user_id"], name: "index_activity_notes_on_user_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "description"
    t.bigint "user_id", null: false
    t.bigint "activity_id", null: false
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_feedbacks_on_activity_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "name"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

  create_table "itinerary_notes", force: :cascade do |t|
    t.string "description"
    t.bigint "user_id", null: false
    t.bigint "itinerary_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["itinerary_id"], name: "index_itinerary_notes_on_itinerary_id"
    t.index ["user_id"], name: "index_itinerary_notes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "itineraries"
  add_foreign_key "activity_notes", "activities"
  add_foreign_key "activity_notes", "users"
  add_foreign_key "feedbacks", "activities"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "itineraries", "users"
  add_foreign_key "itinerary_notes", "itineraries"
  add_foreign_key "itinerary_notes", "users"
end
