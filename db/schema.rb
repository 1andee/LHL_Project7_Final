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

ActiveRecord::Schema.define(version: 20170717193325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "comment"
    t.boolean  "action_required"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "goal_id"
    t.index ["goal_id"], name: "index_comments_on_goal_id", using: :btree
    t.index ["project_id"], name: "index_comments_on_project_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "completion_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feeds", force: :cascade do |t|
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "project_id"
    t.index ["project_id"], name: "index_feeds_on_project_id", using: :btree
    t.index ["user_id"], name: "index_feeds_on_user_id", using: :btree
  end

  create_table "goals", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "project_id"
    t.integer  "completion_status_id"
    t.index ["completion_status_id"], name: "index_goals_on_completion_status_id", using: :btree
    t.index ["project_id"], name: "index_goals_on_project_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.date     "start_date"
    t.date     "finish_date"
    t.boolean  "public"
    t.string   "project_url"
    t.string   "summary"
    t.string   "mentee_feedback"
    t.string   "mentor_feedback"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.boolean  "mentor_pending"
    t.boolean  "mentee_pending"
    t.integer  "completion_status_id"
    t.integer  "mentee_id"
    t.integer  "mentor_id"
    t.index ["completion_status_id"], name: "index_projects_on_completion_status_id", using: :btree
    t.index ["mentee_id"], name: "index_projects_on_mentee_id", using: :btree
    t.index ["mentor_id"], name: "index_projects_on_mentor_id", using: :btree
  end

  create_table "projects_skills", force: :cascade do |t|
    t.integer "skill_id"
    t.integer "project_id"
    t.index ["project_id"], name: "index_projects_skills_on_project_id", using: :btree
    t.index ["skill_id"], name: "index_projects_skills_on_skill_id", using: :btree
  end

  create_table "ratings", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "availability"
    t.integer  "accuracy"
    t.integer  "project_id"
    t.integer  "giver_id"
    t.integer  "receiver_id"
    t.index ["giver_id"], name: "index_ratings_on_giver_id", using: :btree
    t.index ["project_id"], name: "index_ratings_on_project_id", using: :btree
    t.index ["receiver_id"], name: "index_ratings_on_receiver_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "skill_name"
  end

  create_table "skills_users", force: :cascade do |t|
    t.boolean "mentor"
    t.integer "skill_id"
    t.integer "user_id"
    t.index ["skill_id"], name: "index_skills_users_on_skill_id", using: :btree
    t.index ["user_id"], name: "index_skills_users_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "location"
    t.string   "linkedin_url"
    t.string   "github_url"
    t.string   "other_site"
    t.string   "twitter"
    t.string   "slack_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "comments", "goals"
  add_foreign_key "comments", "projects"
  add_foreign_key "comments", "users"
  add_foreign_key "feeds", "projects"
  add_foreign_key "feeds", "users"
  add_foreign_key "goals", "completion_statuses"
  add_foreign_key "goals", "projects"
  add_foreign_key "projects", "completion_statuses"
  add_foreign_key "projects_skills", "projects"
  add_foreign_key "projects_skills", "skills"
  add_foreign_key "ratings", "projects"
  add_foreign_key "skills_users", "skills"
  add_foreign_key "skills_users", "users"
end
