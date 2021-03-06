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

ActiveRecord::Schema.define(version: 20170905183644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "board", force: :cascade do |t|
    t.integer "project_id"
  end

  create_table "boards", force: :cascade do |t|
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "message", force: :cascade do |t|
    t.integer "user_id"
    t.integer "board_id"
    t.text "content"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "board_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project", force: :cascade do |t|
    t.integer "user_id"
    t.text "name"
    t.text "description"
    t.text "photos"
    t.integer "volunteers"
    t.text "location"
    t.date "date"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "user_id"
    t.text "name"
    t.text "description"
    t.text "photos"
    t.integer "volunteers"
    t.text "location"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "people"
    t.time "time"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
    t.text "avatar"
    t.text "neighborhood"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "volunteers", force: :cascade do |t|
    t.integer "project_id"
    t.integer "volunteer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
