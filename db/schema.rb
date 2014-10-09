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

ActiveRecord::Schema.define(version: 20141009115439) do

  create_table "drink_ingredients", force: true do |t|
    t.integer  "ingredient_id"
    t.integer  "drink_id"
    t.float    "measure"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "reccomendation"
    t.boolean  "aged"
  end

  create_table "drinks", force: true do |t|
    t.string   "name"
    t.string   "method"
    t.string   "glass"
    t.string   "garnish"
    t.string   "ice"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "drinks", ["slug"], name: "index_drinks_on_slug"

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
