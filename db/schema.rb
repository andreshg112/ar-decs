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

ActiveRecord::Schema.define(version: 20160325062540) do

  create_table "declaracions", force: :cascade do |t|
    t.string   "entidad_departamento"
    t.string   "entidad_codigo_dane"
    t.string   "entidad_nit"
    t.string   "entidad_dv"
    t.string   "calidad_declarante"
    t.boolean  "correccion_valor"
    t.string   "correccion_id"
    t.date     "correccion_fecha"
    t.integer  "anio"
    t.integer  "mes"
    t.string   "nombres"
    t.string   "tipo_documento"
    t.string   "numero_documento"
    t.string   "dv"
    t.string   "direccion"
    t.string   "departamento"
    t.string   "municipio"
    t.string   "telefono"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "gasolinas", force: :cascade do |t|
    t.integer  "declaracion_id"
    t.string   "clase"
    t.integer  "galones_gravado"
    t.integer  "precio_referencia"
    t.integer  "porcentaje_alcohol"
    t.integer  "base_gravable"
    t.integer  "sobretasa"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end