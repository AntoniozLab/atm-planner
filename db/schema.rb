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

ActiveRecord::Schema.define(version: 2020_04_25_155955) do

  create_table "atm_brands", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "atm_models", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "atm_brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["atm_brand_id"], name: "index_atm_models_on_atm_brand_id"
  end

  create_table "atm_states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "atm_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "atms", force: :cascade do |t|
    t.string "serial_number"
    t.string "description"
    t.date "manufactoring_date"
    t.integer "atm_model_id", null: false
    t.integer "atm_type_id", null: false
    t.integer "atm_state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["atm_model_id"], name: "index_atms_on_atm_model_id"
    t.index ["atm_state_id"], name: "index_atms_on_atm_state_id"
    t.index ["atm_type_id"], name: "index_atms_on_atm_type_id"
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

  create_table "location_contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "position_name"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_location_contacts_on_location_id"
  end

  create_table "location_owners", force: :cascade do |t|
    t.string "name"
    t.string "business_name"
    t.string "document_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "location_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "reference_code"
    t.string "name"
    t.string "address"
    t.string "address_reference"
    t.string "active_state"
    t.integer "location_type_id", null: false
    t.integer "location_owner_id", null: false
    t.integer "district_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["district_id"], name: "index_locations_on_district_id"
    t.index ["location_owner_id"], name: "index_locations_on_location_owner_id"
    t.index ["location_type_id"], name: "index_locations_on_location_type_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "description"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.string "ubigeo"
    t.integer "department_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_provinces_on_department_id"
  end

  create_table "requirement_detail_reasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requirement_detail_states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requirement_details", force: :cascade do |t|
    t.string "description"
    t.date "start_date"
    t.date "end_date"
    t.string "cancel_observation"
    t.integer "atm_new"
    t.integer "atm_old"
    t.integer "requirement_id", null: false
    t.integer "requirement_type_id", null: false
    t.integer "requirement_detail_state_id", null: false
    t.integer "requirement_detail_reason_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["requirement_detail_reason_id"], name: "index_requirement_details_on_requirement_detail_reason_id"
    t.index ["requirement_detail_state_id"], name: "index_requirement_details_on_requirement_detail_state_id"
    t.index ["requirement_id"], name: "index_requirement_details_on_requirement_id"
    t.index ["requirement_type_id"], name: "index_requirement_details_on_requirement_type_id"
  end

  create_table "requirement_states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requirement_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.string "description"
    t.date "request_date"
    t.date "completion_date"
    t.decimal "percentage_success"
    t.integer "user_assigned"
    t.string "attachment_url"
    t.integer "user_id", null: false
    t.integer "requirement_state_id", null: false
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_requirements_on_location_id"
    t.index ["requirement_state_id"], name: "index_requirements_on_requirement_state_id"
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
    t.integer "profile_id", default: 1, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["profile_id"], name: "index_users_on_profile_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "atm_models", "atm_brands"
  add_foreign_key "atms", "atm_models"
  add_foreign_key "atms", "atm_states"
  add_foreign_key "atms", "atm_types"
  add_foreign_key "districts", "provinces"
  add_foreign_key "location_contacts", "locations"
  add_foreign_key "locations", "districts"
  add_foreign_key "locations", "location_owners"
  add_foreign_key "locations", "location_types"
  add_foreign_key "provinces", "departments"
  add_foreign_key "requirement_details", "requirement_detail_reasons"
  add_foreign_key "requirement_details", "requirement_detail_states"
  add_foreign_key "requirement_details", "requirement_types"
  add_foreign_key "requirement_details", "requirements"
  add_foreign_key "requirements", "locations"
  add_foreign_key "requirements", "requirement_states"
  add_foreign_key "requirements", "users"
  add_foreign_key "users", "profiles"
end
