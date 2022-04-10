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

ActiveRecord::Schema.define(version: 2022_04_09_201926) do

  create_table "firms", force: :cascade do |t|
    t.text "firm_name"
    t.integer "firm_nip"
    t.text "firm_adress_street"
    t.integer "firm_adress_street_number"
    t.integer "firm_adress_home_number"
    t.string "firm_zip_code"
    t.text "firm_city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.integer "telephone"
    t.string "position"
  end

  create_table "steps", force: :cascade do |t|
    t.text "content"
    t.text "worker"
    t.integer "task_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["task_id"], name: "index_steps_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "state"
    t.string "descripton"
    t.datetime "date_of_order"
    t.datetime "start_date"
    t.datetime "end_time"
  end

  add_foreign_key "steps", "tasks"
end
