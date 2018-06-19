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

ActiveRecord::Schema.define(version: 2018_06_21_142603) do

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
    t.index ["login"], name: "index_abonents_on_login", unique: true
    t.index ["name"], name: "index_abonents_on_name"
    t.index ["profile_account"], name: "uq_abonents_profile_account", unique: true
  end

  create_table "agents", force: :cascade do |t|
    t.string "name", null: false
    t.string "role_type"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_agents_on_name"
    t.index ["role_type", "role_id"], name: "index_agents_on_role_type_and_role_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "var", null: false
    t.text "value"
    t.integer "thing_id"
    t.string "thing_type", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true
  end

  create_table "site_settings", force: :cascade do |t|
    t.string "name", null: false
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_site_settings_on_name", unique: true
  end

  create_table "storages", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_storages_on_name", unique: true
  end

end
