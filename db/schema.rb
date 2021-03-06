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

ActiveRecord::Schema.define(version: 20160207230055) do

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["event_id"], name: "index_comments_on_event_id", using: :btree

  create_table "events", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.date     "opendate"
    t.string   "opendate_memo"
    t.string   "postal"
    t.string   "address"
    t.string   "address_embed"
    t.integer  "fee"
    t.integer  "limit"
    t.string   "desc_short"
    t.text     "desc_long"
    t.binary   "picture_main",  limit: 16777215
    t.binary   "picture_1",     limit: 16777215
    t.binary   "picture_2",     limit: 16777215
    t.binary   "picture_3",     limit: 16777215
    t.string   "url"
    t.string   "url_facebook"
    t.string   "url_twitter"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address_title"
    t.string   "fee_memo"
  end

  create_table "reports", force: true do |t|
    t.integer  "event_id"
    t.string   "short_desc"
    t.text     "long_desc"
    t.binary   "picture_1",  limit: 16777215
    t.binary   "picture_2",  limit: 16777215
    t.binary   "picture_3",  limit: 16777215
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                   default: "", null: false
    t.string   "encrypted_password",                      default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                           default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.binary   "picture",                limit: 16777215
    t.text     "desc"
    t.string   "url"
    t.string   "id_facebook"
    t.string   "id_twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
