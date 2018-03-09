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

ActiveRecord::Schema.define(version: 20180226154907) do

  create_table "ankles", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "ankle_plantar_flexion_left"
    t.integer  "ankle_plantar_flexion_right"
    t.integer  "ankle_dorsiflexion_left"
    t.integer  "ankle_dorsiflexion_right"
    t.integer  "ankle_inversion_left"
    t.integer  "ankle_inversion_right"
    t.integer  "ankle_eversion_left"
    t.integer  "ankle_eversion_right"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["assessment_id"], name: "index_ankles_on_assessment_id"
  end

  create_table "assessments", force: :cascade do |t|
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "knee_id"
    t.text     "image"
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
    t.integer  "assessment_id"
    t.index ["assessment_id"], name: "index_clients_on_assessment_id"
  end

  create_table "cores", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "trunk_lateral_flexion_left"
    t.integer  "trunk_lateral_flexion_right"
    t.integer  "trunk_rotation_left"
    t.integer  "trunk_rotation_right"
    t.integer  "trunk_flexion"
    t.integer  "trunk_extension"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "pelvic_stability"
    t.index ["assessment_id"], name: "index_cores_on_assessment_id"
  end

  create_table "elbows", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "elbow_flexion_supination_left"
    t.integer  "elbow_flexion_supination_right"
    t.integer  "elbow_extension_supination_left"
    t.integer  "elbow_extension_supination_right"
    t.integer  "elbow_flexion_neutral_left"
    t.integer  "elbow_flexion_neutral_right"
    t.integer  "elbow_extension_neutral_left"
    t.integer  "elbow_extension_neutral_right"
    t.integer  "elbow_flexion_pronation_left"
    t.integer  "elbow_flexion_pronation_right"
    t.integer  "elbow_extension_pronation_left"
    t.integer  "elbow_extension_pronation_right"
    t.integer  "supination_left"
    t.integer  "pronation_left"
    t.integer  "pronation_right"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "supination_right"
    t.index ["assessment_id"], name: "index_elbows_on_assessment_id"
  end

  create_table "hips", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "hip_flexion_right"
    t.integer  "hip_flexion_left"
    t.integer  "hip_extension_left"
    t.integer  "hip_extension_right"
    t.integer  "hip_abduction_left"
    t.integer  "hip_abduction_right"
    t.integer  "hip_adduction_left"
    t.integer  "hip_adduction_right"
    t.integer  "hip_internal_rotation_90_left"
    t.integer  "hip_internal_rotation_90_right"
    t.integer  "hip_external_rotation_90_left"
    t.integer  "hip_external_rotation_90_right"
    t.integer  "hip_internal_rotation_0_left"
    t.integer  "hip_internal_rotation_0_right"
    t.integer  "hip_external_rotation_0_left"
    t.integer  "hip_external_rotation_0_right"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["assessment_id"], name: "index_hips_on_assessment_id"
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

  create_table "scapulas", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "scapula_elevation_left"
    t.integer  "scapula_elevation_right"
    t.integer  "scapula_depression_left"
    t.integer  "scapula_depression_right"
    t.integer  "scapula_protraction_left"
    t.integer  "scapula_protraction_right"
    t.integer  "scapula_retraction_left"
    t.integer  "scapula_retraction_right"
    t.integer  "scapula_upward_rotation_left"
    t.integer  "scapula_upward_rotation_right"
    t.integer  "scapula_downward_rotation_left"
    t.integer  "scapula_downward_rotation_right"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["assessment_id"], name: "index_scapulas_on_assessment_id"
  end

  create_table "shoulders", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "shoulder_flexion_left"
    t.integer  "shoulder_flexion_right"
    t.integer  "shoulder_extension_left"
    t.integer  "shoulder_extension_right"
    t.integer  "shoulder_abduction_left"
    t.integer  "shoulder_abduction_right"
    t.integer  "shoulder_adduction_left"
    t.integer  "shoulder_adduction_right"
    t.integer  "shoulder_internal_rotation_left"
    t.integer  "shoulder_internal_rotation_right"
    t.integer  "shoulder_external_rotation_left"
    t.integer  "shoulder_external_rotation_right"
    t.integer  "shoulder_horizontal_abduction_left"
    t.integer  "shoulder_horizontal_abduction_right"
    t.integer  "shoulder_horizontal_adduction_left"
    t.integer  "shoulder_horizontal_adduction_right"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["assessment_id"], name: "index_shoulders_on_assessment_id"
  end

  create_table "trainers", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.index ["email"], name: "index_trainers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true
  end

  create_table "wrists", force: :cascade do |t|
    t.integer  "assessment_id"
    t.integer  "wrist_flexion_left"
    t.integer  "wrist_flexion_right"
    t.integer  "wrist_extension_left"
    t.integer  "wrist_extension_right"
    t.integer  "wrist_radial_deviation_left"
    t.integer  "wrist_radial_deviation_right"
    t.integer  "wrist_ulnar_deviation_left"
    t.integer  "wrist_ulnar_deviation_right"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assessment_id"], name: "index_wrists_on_assessment_id"
  end

end
