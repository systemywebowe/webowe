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

ActiveRecord::Schema.define(:version => 20130515174421) do

  create_table "awards", :force => true do |t|
    t.integer  "id_award"
    t.integer  "id_project"
    t.string   "name"
    t.text     "content"
    t.string   "from"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.integer  "id_cetegory"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "member_teams", :force => true do |t|
    t.integer  "id_memberTeam"
    t.integer  "id_member"
    t.integer  "id_team"
    t.string   "function"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "members", :force => true do |t|
    t.integer  "id_member"
    t.string   "name"
    t.string   "surname"
    t.text     "description"
    t.integer  "id_user"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "partner_projects", :force => true do |t|
    t.integer  "id_partnerProject"
    t.integer  "id_partner"
    t.integer  "id_project"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "partners", :force => true do |t|
    t.integer  "id_partner"
    t.string   "name"
    t.text     "info"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "id_post"
    t.integer  "id_project"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "project_files", :force => true do |t|
    t.integer  "id_file"
    t.integer  "id_project"
    t.string   "source"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects", :force => true do |t|
    t.integer  "id_project"
    t.string   "name"
    t.text     "shortDesc"
    t.text     "description"
    t.integer  "id_category"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sponsor_projects", :force => true do |t|
    t.integer  "id_sponsorProject"
    t.integer  "id_sponsor"
    t.integer  "id_project"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "sponsors", :force => true do |t|
    t.integer  "id_sponsor"
    t.string   "name"
    t.text     "info"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.integer  "id_team"
    t.integer  "id_project"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "id_user"
    t.string   "login"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
