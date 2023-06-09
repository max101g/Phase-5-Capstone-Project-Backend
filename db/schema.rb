# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_13_232838) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "admin_code"
    t.string "full_name"
    t.string "email"
    t.string "user_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_code"], name: "index_admins_on_admin_code", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment_code"
    t.string "content"
    t.string "post_code"
    t.string "user_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_code"], name: "index_comments_on_comment_code", unique: true
  end

  create_table "employers", force: :cascade do |t|
    t.string "employer_code"
    t.string "company_name"
    t.string "email"
    t.string "location"
    t.string "avatar"
    t.string "description"
    t.boolean "verified"
    t.string "user_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employer_code"], name: "index_employers_on_employer_code", unique: true
  end

  create_table "jobs", force: :cascade do |t|
    t.string "job_code"
    t.string "job_name"
    t.string "employer_code"
    t.string "jobtag_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_code"], name: "index_jobs_on_job_code", unique: true
  end

  create_table "jobtags", force: :cascade do |t|
    t.string "jobtag_code"
    t.string "group_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jobtag_code"], name: "index_jobtags_on_jobtag_code", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.string "post_code"
    t.string "title"
    t.string "media"
    t.string "description"
    t.integer "likes"
    t.string "user_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_code"], name: "index_posts_on_post_code", unique: true
  end

  create_table "seekers", force: :cascade do |t|
    t.string "seeker_code"
    t.string "full_name"
    t.string "email"
    t.string "location"
    t.string "gender"
    t.string "date_of_birth"
    t.string "avatar"
    t.string "phone_number"
    t.string "preferred_job"
    t.string "availability"
    t.integer "minimum_salary"
    t.boolean "verified"
    t.string "user_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seeker_code"], name: "index_seekers_on_seeker_code", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "user_code"
    t.string "username"
    t.string "password_digest"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_code"], name: "index_users_on_user_code", unique: true
  end

end
