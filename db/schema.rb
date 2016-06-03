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

ActiveRecord::Schema.define(version: 20150727155003) do

  create_table "surveys", force: :cascade do |t|
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.integer  "q5"
    t.integer  "q6"
    t.integer  "q7"
    t.integer  "q8"
    t.integer  "q9"
    t.integer  "q10"
    t.integer  "q11"
    t.integer  "q12"
    t.integer  "q13"
    t.integer  "q14"
    t.integer  "q15"
    t.integer  "q16"
    t.integer  "q17"
    t.integer  "q18"
    t.integer  "q19"
    t.integer  "q20"
    t.integer  "q21"
    t.integer  "q22"
    t.integer  "q23"
    t.integer  "q24"
    t.integer  "q25"
    t.integer  "q26"
    t.integer  "q27"
    t.integer  "q28"
    t.integer  "q29"
    t.integer  "q30"
    t.integer  "q31"
    t.integer  "q32"
    t.integer  "q33"
    t.integer  "q34"
    t.integer  "q35"
    t.integer  "q36"
    t.integer  "q37"
    t.integer  "q38"
    t.integer  "q39"
    t.integer  "q40"
    t.decimal  "career_prospects"
    t.decimal  "stressful_job"
    t.decimal  "frustrating_job"
    t.decimal  "fair_pay"
    t.decimal  "constructive_feedback"
    t.decimal  "influence_desicions"
    t.decimal  "boring_work"
    t.decimal  "creativity"
    t.decimal  "open_organization"
    t.decimal  "organization_well_managed"
    t.decimal  "satisfying_job"
    t.decimal  "sense_of_vitality"
    t.decimal  "work_life_balance"
    t.decimal  "supportive_relationships"
    t.decimal  "personal_resilience"
    t.decimal  "job_security"
    t.decimal  "happiness_at_work"
    t.decimal  "cooperation_between_teams"
    t.decimal  "trusted_by_manager"
    t.decimal  "team_well_managed"
    t.decimal  "feel_in_control"
    t.decimal  "learning_new_skills"
    t.decimal  "self_confidence"
    t.decimal  "good_friends_at_work"
    t.decimal  "organizational_pride"
    t.decimal  "enjoy_work"
    t.decimal  "personal_happiness"
    t.decimal  "pleasant_environment"
    t.decimal  "good_organization_to_work_for"
    t.decimal  "absorbing_work"
    t.decimal  "use_strengths"
    t.decimal  "societal_benefits"
    t.decimal  "free_to_be_self"
    t.decimal  "personal_health"
    t.decimal  "worthwhile_job"
    t.decimal  "motivation"
    t.decimal  "achievable_job"
    t.decimal  "team_relationships"
    t.decimal  "relationship_with_manager"
    t.decimal  "customer_client_benefits"
    t.decimal  "vitality"
    t.decimal  "happiness"
    t.decimal  "confidence"
    t.decimal  "work_life_balance_general"
    t.decimal  "personal_resources"
    t.decimal  "job_design"
    t.decimal  "managment_system"
    t.decimal  "work_environment"
    t.decimal  "social_value"
    t.decimal  "organizational_system"
    t.decimal  "self_expression"
    t.decimal  "sense_of_control"
    t.decimal  "sense_of_progress"
    t.decimal  "work_relationships"
    t.decimal  "functioning_at_work"
    t.decimal  "positive_feelings"
    t.decimal  "negative_feelings"
    t.decimal  "engaging_work"
    t.decimal  "worthwhile_work"
    t.decimal  "experience_of_work"
    t.decimal  "overall_happiness"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "user_id"
  end

  add_index "surveys", ["user_id"], name: "index_surveys_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "permission_level"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "named"
    t.string   "role",                   default: "user"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
