# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_22_143451) do
  create_table "classroom_subjects", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "subject_id", null: false
    t.bigint "classroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_classroom_subjects_on_classroom_id"
    t.index ["subject_id"], name: "index_classroom_subjects_on_subject_id"
  end

  create_table "classrooms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "grade"
    t.string "level"
    t.string "section"
    t.string "journey"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_classrooms_on_user_id"
  end

  create_table "student_guardians", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "relationship"
    t.string "nid"
    t.string "address"
    t.string "place"
    t.string "city"
    t.string "phone"
    t.string "work_phone"
    t.string "occupation"
    t.string "education_level"
    t.text "notes"
    t.bigint "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_student_guardians_on_student_id"
  end

  create_table "students", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "classroom_id", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "nationality"
    t.string "gender"
    t.date "birth_date"
    t.string "birth_book"
    t.string "birth_folio"
    t.string "guardian_relationship"
    t.string "alergies"
    t.string "drugs"
    t.string "emergency_contact_name"
    t.string "emergency_contact_phone"
    t.date "check_in_date"
    t.date "check_out_date"
    t.string "initial_condition"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "subjects", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_subjects_on_user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "teacher"
    t.string "firstname"
    t.string "lastname"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "classroom_subjects", "classrooms"
  add_foreign_key "classroom_subjects", "subjects"
  add_foreign_key "classrooms", "users"
  add_foreign_key "student_guardians", "students"
  add_foreign_key "students", "classrooms"
  add_foreign_key "students", "users"
  add_foreign_key "subjects", "users"
end
