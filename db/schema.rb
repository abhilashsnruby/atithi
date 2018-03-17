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

ActiveRecord::Schema.define(version: 20180317071109) do

  create_table "customers", force: :cascade do |t|
    t.string "empname"
    t.string "mobile_no"
    t.date "date_of_joining"
    t.date "date_of_leaving"
    t.date "date_of_birth"
    t.string "marital_status"
    t.string "father_name"
    t.string "spouse_name"
    t.string "gender"
    t.integer "present_res_no"
    t.string "present_res_name"
    t.string "present_street"
    t.string "present_locality"
    t.string "present_city"
    t.integer "present_state_id"
    t.integer "perm_res_no"
    t.string "perm_res_name"
    t.string "perm_street"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
