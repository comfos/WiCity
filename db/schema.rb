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

ActiveRecord::Schema.define(version: 20140228203654) do

  create_table "parks", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "LM",         default: "0:0 - 0:0"
    t.string   "LP",         default: "0:0 - 0:0"
    t.string   "MM",         default: "0:0 - 0:0"
    t.string   "MP",         default: "0:0 - 0:0"
    t.string   "MEM",        default: "0:0 - 0:0"
    t.string   "MEP",        default: "0:0 - 0:0"
    t.string   "GM",         default: "0:0 - 0:0"
    t.string   "GP",         default: "0:0 - 0:0"
    t.string   "VM",         default: "0:0 - 0:0"
    t.string   "VP",         default: "0:0 - 0:0"
    t.string   "SM",         default: "0:0 - 0:0"
    t.string   "SP",         default: "0:0 - 0:0"
    t.string   "DM",         default: "0:0 - 0:0"
    t.string   "DP",         default: "0:0 - 0:0"
    t.string   "phone"
  end

  create_table "pharms", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "LM",         default: "0:0 - 0:0"
    t.string   "LP",         default: "0:0 - 0:0"
    t.string   "MM",         default: "0:0 - 0:0"
    t.string   "MP",         default: "0:0 - 0:0"
    t.string   "MEM",        default: "0:0 - 0:0"
    t.string   "MEP",        default: "0:0 - 0:0"
    t.string   "GM",         default: "0:0 - 0:0"
    t.string   "GP",         default: "0:0 - 0:0"
    t.string   "VM",         default: "0:0 - 0:0"
    t.string   "VP",         default: "0:0 - 0:0"
    t.string   "SM",         default: "0:0 - 0:0"
    t.string   "SP",         default: "0:0 - 0:0"
    t.string   "DM",         default: "0:0 - 0:0"
    t.string   "DP",         default: "0:0 - 0:0"
    t.boolean  "call",       default: false
  end

  create_table "taxistations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",  null: false
    t.string   "encrypted_password",     default: "",  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "surname"
    t.date     "born"
    t.string   "downtown",               default: "0"
    t.string   "home",                   default: "0"
    t.string   "office",                 default: "0"
    t.string   "other",                  default: "0"
    t.string   "prefadd",                default: "0"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
