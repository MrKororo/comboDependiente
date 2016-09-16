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

ActiveRecord::Schema.define(version: 20160816023944) do

  create_table "categoria", force: :cascade do |t|
    t.string   "categoria",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "haberes", force: :cascade do |t|
    t.integer  "sueldo_base",      limit: 4
    t.integer  "subcategorium_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "haberes", ["subcategorium_id"], name: "index_haberes_on_subcategorium_id", using: :btree

  create_table "subcategoria", force: :cascade do |t|
    t.string   "subcategoria",  limit: 255
    t.integer  "categorium_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "subcategoria", ["categorium_id"], name: "index_subcategoria_on_categorium_id", using: :btree

  add_foreign_key "haberes", "subcategoria"
  add_foreign_key "subcategoria", "categoria"
end
