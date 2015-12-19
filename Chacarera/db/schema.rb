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

ActiveRecord::Schema.define(version: 20151218222607) do

  create_table "bills", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "person_id"
    t.string   "concept",      null: false
    t.float    "amount",       null: false
    t.date     "invoice_date", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "bills", ["client_id"], name: "index_bills_on_client_id"
  add_index "bills", ["person_id"], name: "index_bills_on_person_id"

  create_table "clients", force: :cascade do |t|
    t.integer  "gender_id"
    t.string   "cuil_cuit",  null: false
    t.integer  "dni",        null: false
    t.string   "name",       null: false
    t.string   "surname",    null: false
    t.date     "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clients", ["gender_id"], name: "index_clients_on_gender_id"

  create_table "contacts", force: :cascade do |t|
    t.string   "value"
    t.string   "type"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contacts", ["client_id"], name: "index_contacts_on_client_id"

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "genders", ["name"], name: "index_genders_on_name"

  create_table "people", force: :cascade do |t|
    t.boolean  "legal"
    t.string   "name",       null: false
    t.string   "cuil_cuit",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
