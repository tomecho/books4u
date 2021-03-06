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

ActiveRecord::Schema.define(version: 20171214210926) do

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "isbn"
    t.text     "pic"
    t.string   "author"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "retailer_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "card_number"
    t.string   "card_cv"
    t.datetime "card_exp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["book_id"], name: "index_orders_on_book_id"
    t.index ["retailer_id"], name: "index_orders_on_retailer_id"
  end

  create_table "retailers", force: :cascade do |t|
    t.integer  "book_id"
    t.decimal  "price"
    t.string   "name"
    t.decimal  "shipping_cost"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["book_id"], name: "index_retailers_on_book_id"
  end

end
