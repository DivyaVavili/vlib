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

ActiveRecord::Schema.define(:version => 20100919045231) do

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image_url"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "borrowed_books", :force => true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "borrowed_date"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "hashed_password",                :default => "password"
    t.string   "address"
    t.integer  "phone_number"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_type",       :limit => nil, :default => "e"
  end

end
