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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141105155954) do

  create_table "carers", :force => true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "email"
    t.integer  "telefono"
    t.boolean  "localizar"
    t.string   "calle"
    t.string   "provincia"
    t.integer  "cp"
    t.text     "comentarios"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "hair_types", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pet_sizes", :force => true do |t|
    t.string   "pet_size"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pet_statuses", :force => true do |t|
    t.string   "estado"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pet_type_breeds", :force => true do |t|
    t.string   "raza"
    t.integer  "pet_type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pet_type_colours", :force => true do |t|
    t.string   "color"
    t.text     "descripcion"
    t.integer  "pet_type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pet_types", :force => true do |t|
    t.string   "PetTypeName"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pets", :force => true do |t|
    t.integer  "hair_type_id"
    t.integer  "pet_status_id"
    t.integer  "pet_size_id"
    t.integer  "pet_type_id"
    t.integer  "shelter_id"
    t.integer  "carer_id"
    t.string   "nombre"
    t.date     "fecha_nacimiento"
    t.text     "comentarios"
    t.text     "necesidades_especiales"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "picture"
  end

  create_table "shelters", :force => true do |t|
    t.string   "nombre"
    t.string   "usuario"
    t.integer  "telefono"
    t.string   "web"
    t.text     "requisitos_adopcion"
    t.text     "descripcion_asociacion"
    t.boolean  "acogida"
    t.text     "detalles_acogida"
    t.text     "informacion_donaciones"
    t.boolean  "voluntariado"
    t.text     "detalles_voluntariado"
    t.string   "calle"
    t.string   "provincia"
    t.integer  "cp"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
  end

  add_index "shelters", ["email"], :name => "index_shelters_on_email", :unique => true

  create_table "sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
