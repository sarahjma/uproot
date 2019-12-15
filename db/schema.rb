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

ActiveRecord::Schema.define(version: 2019_12_15_125700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id"
    t.string "score"
    t.string "text"
    t.string "image"
    t.integer "min"
    t.integer "max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "chosen_answers", force: :cascade do |t|
    t.bigint "answer_id"
    t.bigint "quiz_result_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "preference_priority"
    t.index ["answer_id"], name: "index_chosen_answers_on_answer_id"
    t.index ["quiz_result_id"], name: "index_chosen_answers_on_quiz_result_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.float "safety_score"
    t.float "education_score"
    t.float "healthcare_score"
    t.float "traffic_score"
    t.integer "rent_small_price"
    t.integer "rent_medium_price"
    t.integer "rent_large_price"
    t.float "temp_min"
    t.float "temp_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "walking_score"
    t.float "train_score"
    t.float "bike_score"
    t.integer "museum_count"
    t.integer "zoo_count"
    t.integer "sport_venues_count"
    t.float "park_score"
    t.float "beach_score"
    t.float "hiking_score"
    t.string "image"
  end

  create_table "questions", force: :cascade do |t|
    t.string "category"
    t.text "content"
    t.string "display_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiz_results", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "chosen_answers", "answers"
  add_foreign_key "chosen_answers", "quiz_results"
end
