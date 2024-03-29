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

ActiveRecord::Schema.define(version: 2019_11_21_204735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "planet_id"
    t.date "check_in"
    t.date "check_out"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "travelers"
    t.index ["planet_id"], name: "index_bookings_on_planet_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "planet_pictures", force: :cascade do |t|
    t.string "photo"
    t.bigint "planet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planet_id"], name: "index_planet_pictures_on_planet_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "capacity"
    t.text "description"
    t.string "stellar_coordinates"
    t.text "activities"
    t.string "weather"
    t.string "local_population"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_planets_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "planet_id"
    t.bigint "user_id"
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planet_id"], name: "index_reviews_on_planet_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "user_pictures", force: :cascade do |t|
    t.string "photo"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_pictures_on_user_id"
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
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "planets"
  add_foreign_key "bookings", "users"
  add_foreign_key "planet_pictures", "planets"
  add_foreign_key "planets", "users"
  add_foreign_key "reviews", "planets"
  add_foreign_key "reviews", "users"
  add_foreign_key "user_pictures", "users"
end
