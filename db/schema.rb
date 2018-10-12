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

ActiveRecord::Schema.define(version: 2018_10_12_213648) do

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "primary"
    t.string "phone"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "form_id"
    t.index ["form_id"], name: "index_contacts_on_form_id"
  end

  create_table "form_products", force: :cascade do |t|
    t.integer "form_id"
    t.integer "product_id"
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_form_products_on_form_id"
    t.index ["product_id"], name: "index_form_products_on_product_id"
  end

  create_table "forms", force: :cascade do |t|
    t.integer "user_id"
    t.string "region"
    t.boolean "joint_replacement"
    t.boolean "sports_medicine"
    t.boolean "orthopedic_trauma"
    t.boolean "spine"
    t.string "other_conditions"
    t.boolean "substitutions"
    t.string "signature"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["user_id"], name: "index_forms_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "image"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
