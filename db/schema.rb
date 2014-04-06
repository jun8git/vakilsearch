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

ActiveRecord::Schema.define(:version => 20140406095542) do

  create_table "charges", :force => true do |t|
    t.integer  "lawyer_id",                 :null => false
    t.integer  "service_id",                :null => false
    t.integer  "cost",       :default => 0, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "charges", ["lawyer_id"], :name => "index_charges_on_lawyer_id"
  add_index "charges", ["service_id", "lawyer_id"], :name => "index_charges_on_service_id_and_lawyer_id", :unique => true

  create_table "cities", :force => true do |t|
    t.string   "name",          :limit => 250,                :null => false
    t.integer  "lawyers_count",                :default => 0, :null => false
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "lawyers", :force => true do |t|
    t.integer  "city_id",                                       :null => false
    t.string   "code",          :limit => 250,                  :null => false
    t.string   "name",          :limit => 250,                  :null => false
    t.integer  "experience",                   :default => 0,   :null => false
    t.float    "rating",                       :default => 0.0, :null => false
    t.integer  "charges_count",                :default => 0,   :null => false
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "lawyers", ["city_id"], :name => "index_lawyers_on_city_id"
  add_index "lawyers", ["code"], :name => "index_lawyers_on_code", :unique => true
  add_index "lawyers", ["experience"], :name => "index_lawyers_on_experience", :unique => true
  add_index "lawyers", ["rating"], :name => "index_lawyers_on_rating", :unique => true

  create_table "services", :force => true do |t|
    t.string   "code",       :limit => 250, :null => false
    t.string   "name",       :limit => 250, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "services", ["code"], :name => "index_services_on_code", :unique => true

end
