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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151022162905) do

  create_table "account_benefit_plans", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "carrier_id"
    t.integer  "carrier_account_id"
    t.integer  "benefit_plan_id"
    t.text     "properties_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "account_benefit_plans", ["deleted_at"], name: "index_account_benefit_plans_on_deleted_at"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "tagline"
    t.string   "plan_name"
    t.text     "properties_data"
    t.string   "card_number"
    t.string   "month"
    t.string   "year"
    t.string   "cvc"
    t.datetime "billing_start"
    t.integer  "billing_day"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "accounts", ["deleted_at"], name: "index_accounts_on_deleted_at"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "application_statuses", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "application_id"
    t.text     "payload"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "application_statuses", ["deleted_at"], name: "index_application_statuses_on_deleted_at"

  create_table "applications", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "benefit_plan_id"
    t.integer  "membership_id"
    t.string   "reference_number"
    t.text     "properties_data"
    t.integer  "selected_by_id"
    t.datetime "selected_on"
    t.integer  "applied_by_id"
    t.datetime "applied_on"
    t.integer  "declined_by_id"
    t.datetime "declined_on"
    t.integer  "approved_by_id"
    t.datetime "approved_on"
    t.integer  "submitted_by_id"
    t.datetime "submitted_on"
    t.integer  "completed_by_id"
    t.datetime "completed_on"
    t.boolean  "errored_by_id"
    t.datetime "errored_on"
    t.string   "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.string   "pdf_attachment_url"
  end

  add_index "applications", ["deleted_at"], name: "index_applications_on_deleted_at"

  create_table "attachments", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "benefit_plan_id"
    t.integer  "group_id"
    t.string   "filename"
    t.string   "content_type"
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "attachments", ["deleted_at"], name: "index_attachments_on_deleted_at"

  create_table "benefit_plans", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "carrier_account_id"
    t.integer  "carrier_id"
    t.string   "name"
    t.string   "slug"
    t.boolean  "is_enabled"
    t.text     "description_markdown"
    t.text     "description_html"
    t.text     "properties_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "benefit_plans", ["deleted_at"], name: "index_benefit_plans_on_deleted_at"

  create_table "carrier_accounts", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "carrier_id"
    t.string   "name"
    t.text     "properties_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "carrier_accounts", ["deleted_at"], name: "index_carrier_accounts_on_deleted_at"

  create_table "carriers", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "account_id"
    t.text     "properties_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "carriers", ["deleted_at"], name: "index_carriers_on_deleted_at"

  create_table "dependents", force: :cascade do |t|
    t.integer  "application_id"
    t.integer  "carrier_id"
    t.string   "master_policy_number"
    t.integer  "group_id"
    t.integer  "member_id"
    t.string   "enrollment_reference_number"
    t.date     "enrollment_date"
    t.integer  "subscriber_number"
    t.string   "dependent_type"
    t.boolean  "dependent_coverage_refusal"
    t.integer  "dependent_coverage_refusal_id"
    t.string   "dependent_first_name"
    t.string   "dependent_middle_name"
    t.string   "dependent_last_name"
    t.string   "dependent_ssn"
    t.string   "dependent_address_1"
    t.string   "dependent_address_2"
    t.string   "dependent_city"
    t.string   "dependent_state"
    t.integer  "dependent_zip"
    t.string   "dependent_home_phone"
    t.string   "dependent_date_of_birth"
    t.integer  "dependent_gender"
    t.boolean  "dependent_disabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: :cascade do |t|
    t.string   "reference_number"
    t.integer  "account_id"
    t.string   "properties_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "enrollments", ["deleted_at"], name: "index_enrollments_on_deleted_at"
  add_index "enrollments", ["reference_number"], name: "index_enrollments_on_reference_number"

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "enabled_for_all"
    t.text     "account_slug_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "features", ["deleted_at"], name: "index_features_on_deleted_at"

  create_table "group_benefit_plans", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "group_id"
    t.integer  "benefit_plan_id"
    t.text     "properties_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "group_benefit_plans", ["deleted_at"], name: "index_group_benefit_plans_on_deleted_at"

  create_table "groups", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "slug"
    t.boolean  "is_enabled"
    t.text     "description_markdown"
    t.text     "description_html"
    t.text     "properties_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.integer  "number_of_members"
    t.string   "industry"
    t.string   "website"
    t.string   "phone_number"
    t.integer  "zip_code"
    t.integer  "tax_id"
  end

  add_index "groups", ["deleted_at"], name: "index_groups_on_deleted_at"

  create_table "invitations", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "uuid"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "invitations", ["deleted_at"], name: "index_invitations_on_deleted_at"

  create_table "invoices", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "membership_id"
    t.integer  "cents"
    t.string   "plan_name"
    t.integer  "payment_id"
    t.boolean  "paid"
    t.text     "properties_data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "invoices", ["deleted_at"], name: "index_invoices_on_deleted_at"

  create_table "memberships", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.integer  "group_id"
    t.string   "role_name"
    t.integer  "role_id"
    t.string   "email"
    t.string   "email_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "memberships", ["deleted_at"], name: "index_memberships_on_deleted_at"

  create_table "notifications", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "role_id"
    t.string   "subject_kind"
    t.integer  "subject_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.datetime "read_at"
  end

  add_index "notifications", ["deleted_at"], name: "index_notifications_on_deleted_at"
  add_index "notifications", ["read_at"], name: "index_notifications_on_read_at"

  create_table "payments", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "cents"
    t.text     "properties"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "payments", ["deleted_at"], name: "index_payments_on_deleted_at"

  create_table "roles", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "english_name"
    t.integer  "invitation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "roles", ["deleted_at"], name: "index_roles_on_deleted_at"

  create_table "subscriber_dependents", force: :cascade do |t|
    t.integer  "application_id"
    t.integer  "carrier_id"
    t.string   "master_policy_number"
    t.integer  "group_id"
    t.integer  "member_id"
    t.string   "enrollment_reference_number"
    t.date     "enrollment_date"
    t.integer  "subscriber_number"
    t.string   "dependent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "password_token"
    t.string   "age"
    t.string   "zipcode"
    t.text     "properties_data"
    t.integer  "invitation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "subscribers", ["deleted_at"], name: "index_subscribers_on_deleted_at"

  create_table "tokens", force: :cascade do |t|
    t.string   "name"
    t.string   "unique_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "tokens", ["deleted_at"], name: "index_tokens_on_deleted_at"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "password_token"
    t.text     "properties_data"
    t.integer  "invitation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.string   "phone"
  end

  add_index "users", ["deleted_at"], name: "index_users_on_deleted_at"

end
