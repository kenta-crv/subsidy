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

ActiveRecord::Schema.define(version: 2022_02_10_081113) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "columns", force: :cascade do |t|
    t.string "title"
    t.string "kategory"
    t.string "description"
    t.string "heading_1"
    t.string "file_1"
    t.text "content_1"
    t.string "heading_2"
    t.string "file_2"
    t.text "content_2"
    t.string "heading_3"
    t.string "file_3"
    t.text "content_3"
    t.string "heading_4"
    t.string "file_4"
    t.text "content_4"
    t.string "heading_5"
    t.string "file_5"
    t.text "content_5"
    t.string "heading_6"
    t.string "file_6"
    t.text "content_6"
    t.string "heading_7"
    t.string "file_7"
    t.text "content_7"
    t.string "heading_8"
    t.string "file_8"
    t.text "content_8"
    t.string "heading_9"
    t.string "file_9"
    t.text "content_9"
    t.string "heading_10"
    t.string "file_10"
    t.text "content_10"
    t.string "heading_11"
    t.string "file_11"
    t.text "content_11"
    t.string "heading_12"
    t.string "file_12"
    t.text "content_12"
    t.string "heading_13"
    t.string "file_13"
    t.text "content_13"
    t.string "heading_14"
    t.string "file_14"
    t.text "content_14"
    t.string "heading_15"
    t.string "file_15"
    t.text "content_15"
    t.string "heading_16"
    t.string "file_16"
    t.text "content_16"
    t.string "heading_17"
    t.string "file_17"
    t.text "content_17"
    t.string "heading_18"
    t.string "file_18"
    t.text "content_18"
    t.string "heading_19"
    t.string "file_19"
    t.text "content_19"
    t.string "heading_20"
    t.string "file_20"
    t.text "content_20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "company"
    t.string "name"
    t.string "tel"
    t.string "email"
    t.string "address"
    t.string "call"
    t.string "voice"
    t.string "history"
    t.string "hirevel"
    t.string "list"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estimates", force: :cascade do |t|
    t.string "company"
    t.string "name"
    t.string "tel"
    t.string "mail"
    t.string "address"
    t.string "url"
    t.string "before_month"
    t.string "before_sales"
    t.string "before_year_sales"
    t.string "after_month"
    t.string "after_sales"
    t.string "after_year_sales"
    t.string "kinds"
    t.string "request"
    t.string "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outsourcings", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "tel"
    t.string "mail"
    t.string "postnumber"
    t.string "address"
    t.string "age"
    t.string "remarks"
    t.string "other_1"
    t.string "other_2"
    t.date "other_3"
    t.string "other_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "file"
    t.string "choice"
    t.string "keyword"
    t.string "description"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recruits", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "tel"
    t.string "mail"
    t.string "postnumber"
    t.string "address"
    t.string "select_1"
    t.string "select_2"
    t.string "select_3"
    t.string "remarks"
    t.string "other_1"
    t.string "other_2"
    t.string "other_3"
    t.string "other_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "releases", force: :cascade do |t|
    t.string "title"
    t.string "file"
    t.string "keyword"
    t.string "description"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.string "file"
    t.string "choice"
    t.string "keyword"
    t.string "description"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "tel"
    t.string "mail"
    t.string "postnumber"
    t.string "address"
    t.string "week"
    t.string "experience"
    t.string "bank"
    t.string "store"
    t.string "account_number"
    t.string "transfer_name"
    t.string "other_1"
    t.string "other_2"
    t.string "other_3"
    t.string "other_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
