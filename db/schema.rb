# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150118115312) do

  create_table "causes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name",                      null: false
    t.text     "description",               null: false
    t.text     "image"
    t.string   "location"
    t.float    "unit_donation",             null: false
    t.integer  "hits",          default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                         null: false
    t.string   "venmo_token"
    t.string   "firstname",                     null: false
    t.string   "lastname",                      null: false
    t.string   "location"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "password_digest"
    t.integer  "points",          default: 0
    t.decimal  "limit",           default: 1.0
  end

end
