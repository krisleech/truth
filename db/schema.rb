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

ActiveRecord::Schema.define(version: 20170318165323) do

  create_table "answers", force: :cascade do |t|
    t.integer  "position"
    t.integer  "question_id"
    t.text     "answer_html"
    t.boolean  "fake"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "position"
    t.text     "question_html"
    t.text     "facts"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "facts_correct",   default: 0
    t.integer  "facts_incorrect", default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
