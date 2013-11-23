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

ActiveRecord::Schema.define(version: 20131123213257) do

  create_table "day_menus", force: true do |t|
    t.string "weekday"
  end

  create_table "item_menus", force: true do |t|
    t.string "item_name"
    t.string "item_category"
    t.string "item_picture"
    t.float  "item_price"
    t.string "item_description"
  end

  create_table "order_links", force: true do |t|
    t.integer "order_menu_id"
    t.integer "todays_special_id"
  end

  create_table "order_menus", force: true do |t|
    t.string  "weekday"
    t.integer "quantity"
    t.float   "item_bill"
    t.integer "order_id"
    t.string  "item_name"
  end

  create_table "orders", force: true do |t|
    t.integer "user_id"
    t.string  "order_status"
    t.float   "order_total"
    t.date    "order_date"
  end

  create_table "todays_specials", force: true do |t|
    t.integer "day_menu_id"
    t.integer "item_menu_id"
    t.string  "cuisine"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
