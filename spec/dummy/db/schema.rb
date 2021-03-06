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

ActiveRecord::Schema.define(version: 20180426155129) do

  create_table "feedbook_answers", force: :cascade do |t|
    t.integer "question_id"
    t.integer "employees_session_id"
    t.text "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employees_session_id"], name: "index_feedbook_answers_on_employees_session_id"
    t.index ["question_id"], name: "index_feedbook_answers_on_question_id"
  end

  create_table "feedbook_departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbook_employee_has_skills", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "skill_id"
    t.date "date"
    t.integer "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_feedbook_employee_has_skills_on_employee_id"
    t.index ["skill_id"], name: "index_feedbook_employee_has_skills_on_skill_id"
  end

  create_table "feedbook_employees", force: :cascade do |t|
    t.text "email"
    t.string "ancestry"
    t.text "ancestry_history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ancestry"], name: "index_feedbook_employees_on_ancestry"
  end

  create_table "feedbook_employees_sessions", force: :cascade do |t|
    t.integer "session_id"
    t.text "notes"
    t.boolean "completed"
    t.integer "manager_id"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_feedbook_employees_sessions_on_employee_id"
    t.index ["manager_id"], name: "index_feedbook_employees_sessions_on_manager_id"
    t.index ["session_id"], name: "index_feedbook_employees_sessions_on_session_id"
  end

  create_table "feedbook_position_has_employees", force: :cascade do |t|
    t.integer "position_id"
    t.integer "employee_id"
    t.text "notes"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_feedbook_position_has_employees_on_employee_id"
    t.index ["position_id"], name: "index_feedbook_position_has_employees_on_position_id"
  end

  create_table "feedbook_positions", force: :cascade do |t|
    t.string "name"
    t.text "job_description"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_feedbook_positions_on_department_id"
  end

  create_table "feedbook_questions", force: :cascade do |t|
    t.integer "session_id"
    t.string "question"
    t.integer "type"
    t.string "options"
    t.boolean "required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_feedbook_questions_on_session_id"
  end

  create_table "feedbook_sessions", force: :cascade do |t|
    t.string "session_type"
    t.integer "periodicity"
    t.integer "target"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbook_skill_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbook_skills", force: :cascade do |t|
    t.string "name"
    t.integer "department_id"
    t.integer "skill_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_feedbook_skills_on_department_id"
    t.index ["skill_group_id"], name: "index_feedbook_skills_on_skill_group_id"
  end

end
