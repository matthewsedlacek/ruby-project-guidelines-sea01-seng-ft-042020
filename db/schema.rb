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

ActiveRecord::Schema.define(version: 4) do

  create_table "beers", force: :cascade do |t|
    t.string  "beer_name"
    t.string  "beer_type"
    t.integer "brewery_id"
  end

  create_table "breweries", force: :cascade do |t|
    t.string "brewery_name"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "beer_id"
    t.integer "user_id"
    t.integer "rating"
    t.string  "review"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
  end

end
