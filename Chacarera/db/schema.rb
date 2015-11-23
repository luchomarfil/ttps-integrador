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

ActiveRecord::Schema.define(version: 20151123000100) do

  create_table "bills", force: :cascade do |t|
    t.integer  "client_id",     null: false
    t.integer  "person_id",     null: false
    t.string   "concepto"
    t.float    "monto"
    t.datetime "fecha_emision"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "bills", ["client_id"], name: "index_bills_on_client_id"
  add_index "bills", ["person_id"], name: "index_bills_on_person_id"

  create_table "clients", force: :cascade do |t|
    t.integer  "genero_id"
    t.string   "cuil_cuit",        null: false
    t.integer  "dni",              null: false
    t.string   "nombre",           null: false
    t.string   "apellido",         null: false
    t.datetime "fecha_nacimiento"
    t.string   "telefono",         null: false
    t.string   "email",            null: false
    t.string   "skype"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "clients", ["genero_id"], name: "index_clients_on_genero_id"

  create_table "generos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "generos", ["nombre"], name: "index_generos_on_nombre"

  create_table "people", force: :cascade do |t|
    t.boolean  "juridica"
    t.string   "nombre",     null: false
    t.string   "cuil_cuit",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
