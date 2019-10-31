# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_30_202229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estacionamentos", force: :cascade do |t|
    t.string "nome_campus"
    t.integer "numero_vaga"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.integer "idade"
    t.string "matricula"
    t.string "tipo_vaga"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "estacionamento"
    t.bigint "estacionamento_id", null: false
    t.index ["estacionamento_id"], name: "index_funcionarios_on_estacionamento_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vagas", force: :cascade do |t|
    t.integer "quantidade"
    t.string "tipo_vaga"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "estacionamento"
    t.bigint "estacionamento_id", null: false
    t.index ["estacionamento_id"], name: "index_vagas_on_estacionamento_id"
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "funcionario"
    t.string "modelo"
    t.string "cor"
    t.string "placa"
    t.boolean "autorizacao"
    t.date "data_expedicao_autorizacao"
    t.date "data_expira_autorizacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "funcionarios", "estacionamentos"
  add_foreign_key "vagas", "estacionamentos"
end
