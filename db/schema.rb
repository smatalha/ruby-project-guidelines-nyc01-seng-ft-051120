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

ActiveRecord::Schema.define(version: 20200528222539) do

  create_table "airlines", force: :cascade do |t|
    t.string "name"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "passenger_id"
    t.integer "flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "airline_id"
    t.datetime "date"
    t.string   "departure_city"
    t.string   "arrival_city"
    t.string   "travel_class"
    t.float    "price"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.string "address"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "airline_id"
    t.integer "passenger_id"
    t.integer "rating"
    t.string  "content"
  end

end
