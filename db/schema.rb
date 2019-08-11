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

ActiveRecord::Schema.define(version: 20190809121951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bussiness_types", force: :cascade do |t|
  create_table "business_types", force: :cascade do |t|
    t.string "section"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "phone"
    t.string "website"
    t.integer "operating_hours"
    t.bigint "business_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_type_id"], name: "index_businesses_on_business_type_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "list_text"
    t.bigint "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_lists_on_task_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_regions_on_name", unique: true
  end

  create_table "sightings", force: :cascade do |t|
    t.integer "amount_in_one_session"
    t.date "date"
    t.integer "latitude"
    t.integer "longitude"
    t.bigint "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id"
    t.index ["animal_id"], name: "index_sightings_on_animal_id"
    t.index ["region_id"], name: "index_sightings_on_region_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_text"
    t.boolean "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "businesses", "business_types"
  add_foreign_key "lists", "tasks"
  add_foreign_key "sightings", "animals"
  add_foreign_key "sightings", "regions"
end
