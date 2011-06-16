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

ActiveRecord::Schema.define(:version => 20110615180018) do

  create_table "admin_headquators", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_regions", :force => true do |t|
    t.integer  "headquator_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "announcements", :force => true do |t|
    t.text     "headline"
    t.text     "message"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classification_doctors", :force => true do |t|
    t.integer  "town_id"
    t.integer  "ophthalmologist"
    t.integer  "physiologists"
    t.integer  "neurosurgeons"
    t.integer  "cardiologist"
    t.integer  "allopathy"
    t.integer  "pediatrician"
    t.integer  "urologists"
    t.integer  "surgeons"
    t.integer  "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctor_spels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.string   "name"
    t.integer  "doctor_spel_id"
    t.text     "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "msrplanners", :force => true do |t|
    t.integer  "doctor_id"
    t.integer  "doctor_spel_id"
    t.float    "tft"
    t.float    "tfs"
    t.float    "vrx"
    t.float    "lux"
    t.float    "nurxl"
    t.float    "cof"
    t.float    "ele"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "real_name"
    t.string   "location"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "settings", :force => true do |t|
    t.string   "label"
    t.string   "identifier"
    t.text     "description"
    t.string   "field_type",  :default => "string"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standared_visits", :force => true do |t|
    t.integer  "doctor_id"
    t.integer  "doctor_spel_id"
    t.string   "call"
    t.string   "product1"
    t.string   "product2"
    t.string   "product3"
    t.string   "month_of_visit"
    t.float    "amc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks", :force => true do |t|
    t.float    "tft"
    t.float    "tfs"
    t.float    "vrx"
    t.float    "lux"
    t.float    "nur_xl"
    t.float    "cof"
    t.float    "ele"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tourprograms", :force => true do |t|
    t.integer  "town_id"
    t.string   "headquators"
    t.string   "Distance"
    t.float    "Fare"
    t.integer  "no_of_visited_doctors"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "towns", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                :limit => 100
    t.string   "encrypted_password",   :limit => 128, :default => "",        :null => false
    t.string   "password_salt",                       :default => "",        :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "login",                :limit => 40
    t.string   "identity_url"
    t.string   "name",                 :limit => 100, :default => ""
    t.string   "state",                               :default => "passive"
    t.string   "twitter_token"
    t.datetime "activated_at"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
