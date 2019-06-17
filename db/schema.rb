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

ActiveRecord::Schema.define(version: 2019_06_17_071609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adverts", force: :cascade do |t|
    t.integer "year", null: false
    t.string "seller", null: false
    t.integer "phone", null: false
    t.string "url", null: false
    t.integer "price", null: false
    t.string "vin", default: "..."
    t.string "city", null: false
    t.text "notes", default: "..."
    t.string "equipment", default: "..."
    t.integer "category_id", null: false
    t.string "owners", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "produces", null: false
    t.string "model", null: false
    t.integer "year", null: false
    t.integer "average_price", null: false
    t.text "notes", default: "..."
    t.string "equipment", default: "..."
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "check_lists", force: :cascade do |t|
    t.string "spending", default: "..."
    t.string "condicion", default: "..."
    t.string "service", default: "..."
    t.string "painted", default: "..."
    t.string "body_repair", default: "..."
    t.integer "price", default: 0
    t.text "notes", default: "..."
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
