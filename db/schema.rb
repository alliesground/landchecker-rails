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

ActiveRecord::Schema.define(version: 2021_03_05_230130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", primary_key: "feature_id", id: :bigint, default: nil, force: :cascade do |t|
    t.bigint "property_id", null: false
    t.string "fulladdress"
    t.string "state"
    t.integer "postcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "lga_code"
    t.index ["property_id"], name: "index_addresses_on_property_id"
  end

  create_table "lgas", primary_key: "code", id: :bigint, default: nil, force: :cascade do |t|
    t.string "name"
    t.string "long_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "council_property_number"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "lga_code"
  end

  add_foreign_key "addresses", "lgas", column: "lga_code", primary_key: "code"
  add_foreign_key "addresses", "properties"
  add_foreign_key "properties", "lgas", column: "lga_code", primary_key: "code"
end
