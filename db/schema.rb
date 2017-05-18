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

ActiveRecord::Schema.define(version: 20170518051112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text     "nombre"
    t.time     "fecha_publicacion"
    t.text     "descripcion"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "doc_file_name"
    t.string   "doc_content_type"
    t.integer  "doc_file_size"
    t.datetime "doc_updated_at"
    t.integer  "committee_id"
  end

  create_table "activity_type_fs", force: :cascade do |t|
    t.integer  "id_activity"
    t.integer  "id_type_f"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comitemembers", force: :cascade do |t|
    t.integer  "committee_id"
    t.integer  "member_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "committees", force: :cascade do |t|
    t.text     "nombre"
    t.text     "descripcion"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "baner_file_name"
    t.string   "baner_content_type"
    t.integer  "baner_file_size"
    t.datetime "baner_updated_at"
    t.integer  "member_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.text     "email"
    t.text     "mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.text     "nombre"
    t.text     "correo"
    t.decimal  "telefono"
    t.text     "descripcion"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "type_fs", force: :cascade do |t|
    t.binary   "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
