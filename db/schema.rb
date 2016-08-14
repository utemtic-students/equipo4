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

ActiveRecord::Schema.define(version: 20160814032907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "log_morrallas", force: :cascade do |t|
    t.integer  "idUser",      null: false
    t.integer  "idUserAdmin"
    t.decimal  "mount",       null: false
    t.integer  "paid",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "log_prints", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state",      null: false
    t.integer  "typeOrder",  null: false
    t.integer  "idMount",    null: false
  end

  create_table "morrallas", force: :cascade do |t|
    t.integer  "idUser",     null: false
    t.decimal  "mount",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "idUser",     null: false
    t.string   "linkFile",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state",      null: false
    t.integer  "paid",       null: false
    t.decimal  "Mount",      null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
    t.string   "permission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "career"
    t.string   "grade"
    t.string   "imgProfile"
    t.string   "status"
    t.string   "rol"
    t.string   "sex"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
