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

ActiveRecord::Schema.define(version: 20180307110502) do

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.integer "users_id"
    t.integer "shopping_carts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopping_carts_id"], name: "index_orders_on_shopping_carts_id"
    t.index ["users_id"], name: "index_orders_on_users_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_title"
    t.text "product_description"
    t.decimal "product_price"
    t.string "product_img_url"
    t.integer "shopping_carts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shopping_carts_id"], name: "index_products_on_shopping_carts_id"


  end

  create_table "shopping_cart_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.integer "quantity"
    t.integer "item_id"
    t.string "item_type"
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lastname"
    t.string "firstname"
    t.integer "streetnumber"
    t.string "streetname"
    t.integer "postalcode"
    t.string "city"
    t.string "phonenumber"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
