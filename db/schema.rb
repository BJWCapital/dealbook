# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100814182319) do

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.string   "street2"
    t.integer  "city_zip_id"
    t.integer  "zip_plus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "city_zip_msas", :force => true do |t|
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "area_code"
    t.string   "county"
    t.string   "time_zone"
    t.boolean  "dst"
    t.integer  "msa"
    t.integer  "pmsa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "msapmsacmsas", :force => true do |t|
    t.integer  "msa_pmsa"
    t.string   "type"
    t.integer  "cmsa"
    t.string   "level"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", :force => true do |t|
    t.string   "name"
    t.integer  "ask_price"
    t.integer  "current_noi"
    t.integer  "pro_forma_noi"
    t.integer  "occupancy"
    t.integer  "class"
    t.text     "description"
    t.string   "opportunity"
    t.integer  "address_id"
    t.integer  "status_id"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "property_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
