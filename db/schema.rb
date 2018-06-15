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

ActiveRecord::Schema.define(version: 2018_06_15_105235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abonents", force: :cascade do |t|
    t.string "name", null: false
    t.string "login", null: false
    t.integer "bill_account", null: false
    t.integer "profile_account", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_account"], name: "uq_abonents_bill_account", unique: true
    t.index ["login"], name: "index_abonents_on_login"
    t.index ["login"], name: "uq_abonents_login", unique: true
    t.index ["profile_account"], name: "uq_abonents_profile_account", unique: true
  end

  create_table "agents", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_agents_on_name"
  end

  create_table "storages", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_default", default: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_storages_on_name"
    t.index ["name"], name: "uq_storages_name", unique: true
  end

end
