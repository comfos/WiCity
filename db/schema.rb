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

ActiveRecord::Schema.define(version: 20150108091449) do

  create_table "caves", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
    t.string   "LM",         default: "0:00 - 0:00"
    t.string   "LP",         default: "0:00 - 0:00"
    t.string   "MM",         default: "0:00 - 0:00"
    t.string   "MP",         default: "0:00 - 0:00"
    t.string   "MEM",        default: "0:00 - 0:00"
    t.string   "MEP",        default: "0:00 - 0:00"
    t.string   "GM",         default: "0:00 - 0:00"
    t.string   "GP",         default: "0:00 - 0:00"
    t.string   "VM",         default: "0:00 - 0:00"
    t.string   "VP",         default: "0:00 - 0:00"
    t.string   "SM",         default: "0:00 - 0:00"
    t.string   "SP",         default: "0:00 - 0:00"
    t.string   "DM",         default: "0:00 - 0:00"
    t.string   "DP",         default: "0:00 - 0:00"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "first_aids", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
    t.string   "LM",         default: "0:00 - 13:00"
    t.string   "LP",         default: "13:00 - 24:00"
    t.string   "MM",         default: "0:00 - 13:00"
    t.string   "MP",         default: "13:00 - 24:00"
    t.string   "MEM",        default: "0:00 - 13:00"
    t.string   "MEP",        default: "13:00 - 24:00"
    t.string   "GM",         default: "0:00 - 13:00"
    t.string   "GP",         default: "13:00 - 24:00"
    t.string   "VM",         default: "0:00 - 13:00"
    t.string   "VP",         default: "13:00 - 24:00"
    t.string   "SM",         default: "0:00 - 13:00"
    t.string   "SP",         default: "13:00 - 24:00"
    t.string   "DM",         default: "0:00 - 13:00"
    t.string   "DP",         default: "13:00 - 24:00"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fuels", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitals", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
    t.string   "LM",         default: "0:00 - 13:00"
    t.string   "LP",         default: "13:00 - 24:00"
    t.string   "MM",         default: "0:00 - 13:00"
    t.string   "MP",         default: "13:00 - 24:00"
    t.string   "MEM",        default: "0:00 - 13:00"
    t.string   "MEP",        default: "13:00 - 24:00"
    t.string   "GM",         default: "0:00 - 13:00"
    t.string   "GP",         default: "13:00 - 24:00"
    t.string   "VM",         default: "0:00 - 13:00"
    t.string   "VP",         default: "13:00 - 24:00"
    t.string   "SM",         default: "0:00 - 13:00"
    t.string   "SP",         default: "13:00 - 24:00"
    t.string   "DM",         default: "0:00 - 13:00"
    t.string   "DP",         default: "13:00 - 24:00"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.integer  "n1"
    t.integer  "n2"
    t.string   "Timeg",      default: "0"
    t.string   "Timew",      default: "0"
    t.string   "Distance",   default: "0"
    t.string   "FlussIn",    default: "0"
    t.string   "FlussOut",   default: "0"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["n1", "n2"], name: "index_links_on_n1_and_n2", unique: true, using: :btree

  create_table "nodos", force: true do |t|
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "capacity",   default: 0
    t.integer  "occupati",   default: 0
    t.integer  "flusso",     default: 0
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
    t.string   "phone"
  end

  create_table "radiotaxis", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "lat"
    t.string   "lng"
    t.string   "phone"
    t.string   "url"
    t.integer  "typ",        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "away",                   default: "0"
    t.string   "home",                   default: "0"
    t.string   "office",                 default: "0"
    t.string   "other",                  default: "0"
    t.string   "prefadd",                default: "0"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
