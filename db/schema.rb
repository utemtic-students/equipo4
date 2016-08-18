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

ActiveRecord::Schema.define(version: 20160818052921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archivos", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "log_morrallas", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.integer  "user_admin_id"
    t.decimal  "mount",         null: false
    t.integer  "paid",          null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "log_prints", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state",      null: false
    t.integer  "typeOrder",  null: false
    t.integer  "mount_id",   null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true, using: :btree
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree

  create_table "morrallas", force: :cascade do |t|
<<<<<<< HEAD
    t.integer  "user_id",    null: false
    t.decimal  "mount",      null: false
=======
    t.integer  "mount"
    t.integer  "user_id"
>>>>>>> solution
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "morrallas", ["user_id"], name: "index_morrallas_on_user_id", using: :btree

  create_table "morrallas_usuarios", id: false, force: :cascade do |t|
    t.integer "usuario_id",  null: false
    t.integer "morralla_id", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "linkFile",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state",      null: false
    t.integer  "paid",       null: false
    t.decimal  "mount",      null: false
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
    t.integer  "grade"
    t.string   "imgProfile"
    t.boolean  "status"
    t.integer  "rol"
    t.string   "sex"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "morrallas", "users"
end
