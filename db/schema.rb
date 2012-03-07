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

ActiveRecord::Schema.define(:version => 20120305182806) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "alias"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cities", :force => true do |t|
    t.integer  "country_id"
    t.integer  "state_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["country_id"], :name => "index_cities_on_country_id"
  add_index "cities", ["state_id"], :name => "index_cities_on_state_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cources", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "duration"
    t.string   "schedule"
    t.string   "cost"
    t.integer  "location_id"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.string   "alias"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "cources", ["category_id"], :name => "index_cources_on_category_id"
  add_index "cources", ["location_id"], :name => "index_cources_on_location_id"
  add_index "cources", ["subcategory_id"], :name => "index_cources_on_subcategory_id"

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "duration"
    t.string   "schedule"
    t.string   "cost"
    t.integer  "location_id"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.string   "alias"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "courses", ["category_id"], :name => "index_courses_on_category_id"
  add_index "courses", ["location_id"], :name => "index_courses_on_location_id"
  add_index "courses", ["subcategory_id"], :name => "index_courses_on_subcategory_id"

  create_table "institutions", :force => true do |t|
    t.string   "name"
    t.string   "alias"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "institutions", ["location_id"], :name => "index_institutions_on_location_id"

  create_table "localities", :force => true do |t|
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.string   "name"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "localities", ["city_id"], :name => "index_localities_on_city_id"
  add_index "localities", ["country_id"], :name => "index_localities_on_country_id"
  add_index "localities", ["state_id"], :name => "index_localities_on_state_id"

  create_table "locations", :force => true do |t|
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "locality_id"
    t.string   "name"
    t.string   "alias"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "locations", ["city_id"], :name => "index_locations_on_city_id"
  add_index "locations", ["country_id"], :name => "index_locations_on_country_id"
  add_index "locations", ["locality_id"], :name => "index_locations_on_locality_id"
  add_index "locations", ["state_id"], :name => "index_locations_on_state_id"

  create_table "states", :force => true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "states", ["country_id"], :name => "index_states_on_country_id"

  create_table "subcategories", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "alias"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "subcategories", ["category_id"], :name => "index_subcategories_on_category_id"

end
