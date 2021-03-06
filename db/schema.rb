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

ActiveRecord::Schema.define(version: 2017071812020000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "manufacturers", force: :cascade do |t|
    t.text     "name",        null: false
    t.text     "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.text    "name",           null: false
    t.float   "price",          null: false
    t.text    "sku",            null: false
    t.integer "manufacture_id", null: false
    t.index ["manufacture_id"], name: "index_products_on_manufacture_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.text     "email",           null: false
    t.text     "name",            null: false
    t.text     "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
