# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_29_140027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.string "name"
    t.text "allergy_information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "country"
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "language_code"
  end

  create_table "translated_allergies", force: :cascade do |t|
    t.bigint "allergy_id"
    t.string "name"
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_translated_allergies_on_allergy_id"
  end

  create_table "user_allergies", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "allergy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_user_allergies_on_allergy_id"
    t.index ["user_id"], name: "index_user_allergies_on_user_id"
  end

  create_table "user_places", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_user_places_on_place_id"
    t.index ["user_id"], name: "index_user_places_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "emerency_contact_name"
    t.string "emerency_contact_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "translated_allergies", "allergies"
  add_foreign_key "user_allergies", "allergies"
  add_foreign_key "user_allergies", "users"
  add_foreign_key "user_places", "places"
  add_foreign_key "user_places", "users"
end
