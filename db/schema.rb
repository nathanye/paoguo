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

ActiveRecord::Schema.define(version: 20170526080541) do

  create_table "pp1as", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "pp1_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pp1s", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "date"
    t.string   "week"
    t.string   "yinli"
    t.string   "weather"
    t.string   "begin_time"
    t.string   "finish_time"
    t.string   "from_where"
    t.string   "how_to_go"
    t.string   "main_place"
    t.string   "run_begin_time"
    t.string   "run_finish_time"
    t.string   "how_long_time"
    t.integer  "how_long_kilos"
    t.string   "stretch_or_not"
    t.string   "how_to_go_back"
    t.string   "back_to_where"
    t.string   "about_people"
    t.string   "about_ideas"
    t.string   "about_serendipities"
    t.string   "about_others"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "product01s", force: :cascade do |t|
    t.integer  "count",      default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "is_admin",               default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
