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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180415230016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "labs", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.string "cover"
    t.text "description"
    t.string "tech_stack", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_sections", force: :cascade do |t|
    t.bigint "post_id"
    t.string "header"
    t.string "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_sections_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "meta_title"
    t.string "meta_description"
    t.string "title"
    t.string "slug"
    t.date "date"
    t.string "cover"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_demos", force: :cascade do |t|
    t.bigint "project_id"
    t.string "header"
    t.string "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_demos_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "meta_title"
    t.string "meta_description"
    t.string "title"
    t.string "slug"
    t.string "cover"
    t.string "images", default: [], array: true
    t.string "site_link"
    t.string "repo_link"
    t.text "description"
    t.text "summary", default: [], array: true
    t.string "highlights", default: [], array: true
    t.string "tech_stack", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
