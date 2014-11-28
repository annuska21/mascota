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

ActiveRecord::Schema.define(:version => 20141111161426) do

  create_table "carers", :force => true do |t|
    t.integer  "shelter_id"
    t.string   "dni"
    t.string   "name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone"
    t.boolean  "locate"
    t.boolean  "inactive"
    t.string   "via"
    t.string   "street"
    t.string   "town"
    t.string   "province"
    t.integer  "postal_code"
    t.text     "commentary"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "hair_types", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pet_sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pet_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pet_type_breeds", :force => true do |t|
    t.string   "name"
    t.integer  "pet_type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pet_type_colours", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pet_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pets", :force => true do |t|
    t.integer  "hair_type_id"
    t.integer  "pet_status_id"
    t.integer  "pet_size_id"
    t.integer  "shelter_id"
    t.integer  "carer_id"
    t.integer  "pet_type_breed_id"
    t.integer  "pet_type_colour_id"
    t.string   "name"
    t.date     "birthday"
    t.text     "commentary"
    t.text     "special_need"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.string   "picture",            :default => "sin_imagen.png"
    t.string   "gender",             :default => "Desconocido"
  end

  create_table "shelters", :force => true do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "cif"
    t.string   "web"
    t.text     "adoption_requirement"
    t.text     "shelter_description"
    t.boolean  "carer_possibility"
    t.text     "carer_detail"
    t.text     "donation_information"
    t.boolean  "voluntary"
    t.text     "voluntary_detail"
    t.string   "via"
    t.string   "street"
    t.integer  "postal_code"
    t.string   "town"
    t.string   "province"
    t.string   "country",              :default => "España"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "email",                :default => "",       :null => false
    t.string   "encrypted_password",   :default => "",       :null => false
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "shelters", ["email"], :name => "index_shelters_on_email", :unique => true

  create_table "sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
