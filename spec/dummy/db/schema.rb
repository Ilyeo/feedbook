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

ActiveRecord::Schema.define(version: 20180419215937) do
  create_table "feedbook_departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbook_employees", force: :cascade do |t|
    t.text "email"
    t.string "ancestry"
    t.text "ancestry_history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ancestry"], name: "index_feedbook_employees_on_ancestry"
  end

  create_table "feedbook_position_has_employees", force: :cascade do |t|
    t.integer "position_id"
    t.integer "employee_id"
    t.datetime "date"
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
