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

ActiveRecord::Schema.define(version: 2019_12_19_125541) do

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
    t.float "sports_venues_score"
    t.float "zoo_score"
    t.float "museum_score"
    t.integer "galleries_count"
    t.float "galleries_score"
    t.integer "comedy_count"
    t.float "comedy_score"
    t.integer "movie_venues_count"
    t.float "movie_venues_score"
    t.float "concerts_score"
    t.float "air_quality_score"
    t.float "greenery_score"
    t.float "airport_score"
    t.float "water_score"
    t.float "life_expectancy"
    t.float "sunny_score"
    t.string "weather_type"
    t.integer "concerts_venues"
    t.string "lgbtq_status"
    t.string "career", default: [], array: true
    t.float "lgbtq_score"
    t.float "cleanliness_score"
    t.float "gun_ownership_score"
    t.float "gdp_growth_score"
    t.float "startup_score"
    t.float "business_freedom_score"
    t.float "minority_score"
    t.string "country"
    t.float "salary", default: [], array: true
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
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
    t.integer "rent"
    t.string "sorted_categories", default: [], array: true
    t.bigint "user_id"
    t.index ["user_id"], name: "index_quiz_results_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "chosen_answers", "answers"
  add_foreign_key "chosen_answers", "quiz_results"
end
