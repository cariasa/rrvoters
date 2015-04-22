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

ActiveRecord::Schema.define(version: 20150422031654) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "barrio_colonia", force: :cascade do |t|
    t.string   "nombre_colonia"
    t.string   "tipo"
    t.integer  "municipio_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "barrio_colonia", ["municipio_id"], name: "index_barrio_colonia_on_municipio_id"

  create_table "departamentos", force: :cascade do |t|
    t.integer  "codigo_departamento"
    t.string   "nombre_departamento"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "departmentos", force: :cascade do |t|
    t.integer  "codigo_departamento"
    t.string   "nombre_departamento"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "destroys", force: :cascade do |t|
    t.string   "Departmento"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "municipios", force: :cascade do |t|
    t.integer  "codigo_municipio"
    t.string   "nombre_municipio"
    t.integer  "departamento_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "municipios", ["departamento_id"], name: "index_municipios_on_departamento_id"

  create_table "personas", force: :cascade do |t|
    t.string   "identidad_persona"
    t.string   "nombres_persona"
    t.string   "apellidos_persona"
    t.string   "telefono_persona"
    t.string   "email_persona"
    t.integer  "barrio_colonia_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "personas", ["barrio_colonia_id"], name: "index_personas_on_barrio_colonia_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
