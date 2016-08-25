# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160824092547) do

  create_table "apartments", force: :cascade do |t|
    t.string   "street"
    t.date     "from_date"
    t.date     "to_date"
    t.boolean  "to_date_open"
    t.boolean  "flex_dates"
    t.integer  "price"
    t.boolean  "price_neg"
    t.boolean  "agent_fee"
    t.boolean  "furnished"
    t.boolean  "package"
    t.decimal  "flights"
    t.decimal  "beds"
    t.decimal  "baths"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.integer  "currency_id"
    t.integer  "area_id"
    t.integer  "rental_type_id"
    t.integer  "price_time_id"
  end

  add_index "apartments", ["area_id"], name: "index_apartments_on_area_id"
  add_index "apartments", ["currency_id"], name: "index_apartments_on_currency_id"
  add_index "apartments", ["price_time_id"], name: "index_apartments_on_price_time_id"
  add_index "apartments", ["rental_type_id"], name: "index_apartments_on_rental_type_id"
  add_index "apartments", ["user_id"], name: "index_apartments_on_user_id"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string   "name"
    t.string   "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "picture"
    t.integer  "apartment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "price_times", force: :cascade do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rental_types", force: :cascade do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "agent",                  default: false, null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
