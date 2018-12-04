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

ActiveRecord::Schema.define(version: 2018_12_03_151906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "attending"
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.integer "carbon", default: 0
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.boolean "active", default: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "address"
    t.integer "capacity"
    t.date "start_date"
    t.time "start_time"
    t.date "end_date"
    t.time "end_time"
    t.string "city"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "responses", force: :cascade do |t|
    t.bigint "comment_id"
    t.bigint "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_responses_on_comment_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "tips", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "challenge_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_tips_on_challenge_id"
    t.index ["user_id"], name: "index_tips_on_user_id"
  end

  create_table "transportations", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "carbon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_transportations_on_user_id"
  end

  create_table "user_challenges", force: :cascade do |t|
    t.bigint "challenge_id"
    t.bigint "user_id"
    t.boolean "completed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_user_challenges_on_challenge_id"
    t.index ["user_id"], name: "index_user_challenges_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "score", default: 0
    t.string "city"
    t.boolean "admin", default: false
    t.integer "streak"
    t.string "avatar"
    t.boolean "vegan", default: false
    t.boolean "car", default: false
    t.string "time_zone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attendances", "events"
  add_foreign_key "attendances", "users"
  add_foreign_key "comments", "events"
  add_foreign_key "comments", "users"
  add_foreign_key "events", "users"
  add_foreign_key "responses", "comments"
  add_foreign_key "responses", "users"
  add_foreign_key "tips", "challenges"
  add_foreign_key "tips", "users"
  add_foreign_key "transportations", "users"
  add_foreign_key "user_challenges", "challenges"
  add_foreign_key "user_challenges", "users"
end
