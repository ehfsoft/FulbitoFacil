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

ActiveRecord::Schema.define(:version => 20120217014040) do

  create_table "advertisings", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.date     "startdate"
    t.date     "enddate"
    t.integer  "rate"
    t.string   "location"
    t.integer  "numberclicks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "canchas", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "local_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dia"
    t.time     "tiempo"
    t.string   "hora"
    t.integer  "diasem"
    t.string   "horafin"
    t.decimal  "preciolav"
    t.decimal  "preciosd"
  end

  add_index "canchas", ["local_id"], :name => "index_canchas_on_local_id"

  create_table "clidistricts", :force => true do |t|
    t.string   "name"
    t.string   "postalcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "apepaterno"
    t.string   "apematerno"
    t.string   "sexcli"
    t.string   "numerodoc"
    t.string   "direccion"
    t.string   "distrito"
    t.string   "correo"
    t.string   "confcorreo"
    t.string   "contrasena"
    t.string   "confcontrasena"
    t.date     "fecnacimiento"
    t.string   "celular"
    t.integer  "documenttype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["documenttype_id"], :name => "index_clientes_on_documenttype_id"

  create_table "clients", :force => true do |t|
    t.string   "nombre"
    t.string   "apepaterno"
    t.string   "apematerno"
    t.string   "sexcli"
    t.string   "numerodoc"
    t.string   "direccion"
    t.string   "correo"
    t.string   "confcorreo"
    t.string   "contrasena"
    t.string   "confcontrasena"
    t.date     "fecnacimiento"
    t.string   "celular"
    t.integer  "documenttype_id"
    t.integer  "clidistricts_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["clidistricts_id"], :name => "index_clients_on_clidistricts_id"
  add_index "clients", ["documenttype_id"], :name => "index_clients_on_documenttype_id"

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.string   "calification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.string   "postalcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documenttypes", :force => true do |t|
    t.string   "name"
    t.string   "shortname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fulclientes", :force => true do |t|
    t.string   "nombre"
    t.string   "apepaterno"
    t.string   "apematerno"
    t.string   "sexcli"
    t.string   "numerodoc"
    t.string   "direccion"
    t.string   "correo"
    t.string   "confcorreo"
    t.string   "contrasena"
    t.string   "confcontrasena"
    t.date     "fecnacimiento"
    t.string   "celular"
    t.integer  "documenttype_id"
    t.integer  "clidistrict_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fulclientes", ["clidistrict_id"], :name => "index_fulclientes_on_clidistrict_id"
  add_index "fulclientes", ["documenttype_id"], :name => "index_fulclientes_on_documenttype_id"

  create_table "locals", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "addressgoogle"
    t.string   "phone"
    t.integer  "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "locals", ["district_id"], :name => "index_locals_on_district_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "maidenname"
    t.string   "sex"
    t.string   "documentnumber"
    t.string   "email"
    t.string   "password"
    t.date     "datebirth"
    t.integer  "documenttype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["documenttype_id"], :name => "index_users_on_documenttype_id"

end
