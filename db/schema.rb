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

ActiveRecord::Schema.define(version: 20160414125152) do

  create_table "advices", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.boolean  "status"
    t.string   "linkname1"
    t.text     "link1"
    t.text     "link2"
    t.string   "linkname2"
    t.text     "link3"
    t.string   "linkname3"
    t.integer  "ref"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checklists", force: :cascade do |t|
    t.boolean  "networks"
    t.boolean  "pro_networks"
    t.boolean  "community"
    t.boolean  "cms"
    t.boolean  "seo"
    t.boolean  "crowdfunding"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "checklists", ["user_id"], name: "index_checklists_on_user_id"

  create_table "sites", force: :cascade do |t|
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "website"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sites", ["user_id"], name: "index_sites_on_user_id"

  create_table "user_advices", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "advice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_advices", ["advice_id"], name: "index_user_advices_on_advice_id"
  add_index "user_advices", ["user_id"], name: "index_user_advices_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                                          default: "",   null: false
    t.string   "encrypted_password",                             default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                  default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.decimal  "points",                 precision: 5, scale: 2, default: 10.0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
