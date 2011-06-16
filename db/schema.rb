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

ActiveRecord::Schema.define(:version => 20110616213652) do

  create_table "assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "goal_id"
    t.text     "task"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lft"
    t.integer  "rgt"
  end

  create_table "goals", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "timeline"
    t.integer  "goalable_id"
    t.string   "goalable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resource_stocks", :force => true do |t|
    t.integer  "resource_id"
    t.integer  "resourceable_id"
    t.string   "resourceable_type"
    t.string   "quantity"
    t.string   "demand"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roots", :force => true do |t|
    t.string   "name"
    t.text     "problem"
    t.text     "vision"
    t.text     "scope"
    t.integer  "visibility"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "seeds", :force => true do |t|
    t.string   "name"
    t.text     "problem"
    t.text     "vision"
    t.text     "scope"
    t.integer  "visibility"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status"
    t.integer  "user_id"
    t.integer  "category_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
