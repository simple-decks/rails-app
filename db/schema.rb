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

ActiveRecord::Schema.define(version: 20140510185648) do

  create_table "anonymous_slides", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
  end

  create_table "presentations", force: true do |t|
    t.string   "author"
    t.string   "title"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url_token"
    t.string   "url_title"
  end

  add_index "presentations", ["url_title"], name: "index_presentations_on_url_title"
  add_index "presentations", ["url_token"], name: "index_presentations_on_url_token"

  create_table "slides", force: true do |t|
    t.integer  "presentation_id"
    t.string   "content"
    t.string   "slide_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "slides", ["presentation_id"], name: "index_slides_on_presentation_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
