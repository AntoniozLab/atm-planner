# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_25_054015) do

  create_table "atm_brands", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "atm_models_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["atm_models_id"], name: "index_atm_brands_on_atm_models_id"
  end

  create_table "atm_models", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "ATM_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ATM_id"], name: "index_atm_models_on_ATM_id"
  end

  create_table "atm_states", force: :cascade do |t|
    t.string "name"
    t.integer "ATM_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ATM_id"], name: "index_atm_states_on_ATM_id"
  end

  create_table "atm_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "ATM_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ATM_id"], name: "index_atm_types_on_ATM_id"
  end

  create_table "atms", force: :cascade do |t|
    t.string "serial_number"
    t.string "description"
    t.date "manufacturing_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "ubigeo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.string "ubigeo"
    t.integer "province_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["province_id"], name: "index_districts_on_province_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.string "ubigeo"
    t.integer "department_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_provinces_on_department_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.string "title"
    t.datetime "request_date"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_requirements_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "code"
    t.string "name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "atm_brands", "atm_models", column: "atm_models_id"
  add_foreign_key "atm_models", "ATMs"
  add_foreign_key "atm_states", "ATMs"
  add_foreign_key "atm_types", "ATMs"
  add_foreign_key "districts", "provinces"
  add_foreign_key "provinces", "departments"
  add_foreign_key "requirements", "users"
end
