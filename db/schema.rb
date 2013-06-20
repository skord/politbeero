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

ActiveRecord::Schema.define(:version => 20130619170117) do

  create_table "beers", :force => true do |t|
    t.string   "name"
    t.decimal  "abv"
    t.integer  "ibu"
    t.integer  "brewery_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "slug"
    t.integer  "style_id"
    t.boolean  "in_stock",          :default => false
    t.string   "short_description"
    t.text     "description"
    t.string   "vessel"
  end

  add_index "beers", ["brewery_id"], :name => "index_beers_on_brewery_id"
  add_index "beers", ["slug"], :name => "index_beers_on_slug", :unique => true
  add_index "beers", ["style_id"], :name => "index_beers_on_style_id"

  create_table "breweries", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "slug"
    t.string   "distribution"
  end

  add_index "breweries", ["slug"], :name => "index_breweries_on_slug", :unique => true

  create_table "styles", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "styles", ["slug"], :name => "index_styles_on_slug", :unique => true

  create_table "users", :force => true do |t|
    t.string   "name",                   :default => "", :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
