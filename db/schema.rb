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

ActiveRecord::Schema.define(version: 20180119000129) do

  create_table "assessments", force: :cascade do |t|
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "knee_id"
    t.index ["client_id"], name: "index_assessments_on_client_id"
    t.index ["knee_id"], name: "index_assessments_on_knee_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "date_of_birth"
    t.string   "home_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "knees", force: :cascade do |t|
    t.integer  "assessment_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "knee_flexion_left"
    t.integer  "knee_flexion_right"
    t.integer  "knee_extension_left"
    t.integer  "knee_extension_right"
    t.index ["assessment_id"], name: "index_knees_on_assessment_id"
  end

end
