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

ActiveRecord::Schema.define(version: 2018_05_09_075657) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "clients", force: :cascade do |t|
    t.float "codcli"
    t.string "razsocial"
    t.string "nif"
    t.string "siglas"
    t.string "calle"
    t.string "numero"
    t.string "direccion"
    t.string "codpos"
    t.string "municipio"
    t.string "representada"
    t.string "dni"
    t.string "cargo"
    t.string "nsscia"
    t.string "cnae"
    t.string "telefono"
    t.string "telefono1"
    t.string "fax"
    t.float "pago"
    t.integer "diapago1"
    t.integer "diapago2"
    t.float "ncentro"
    t.datetime "fecmod"
    t.float "politicafra"
    t.float "iva"
    t.float "req"
    t.string "nombrebco"
    t.string "ncuenta"
    t.decimal "margencli"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.float "ncontrato"
    t.float "codcli"
    t.float "codoper"
    t.string "regimen"
    t.text "causajustificante"
    t.float "supuestocelebra"
    t.integer "tipocontrato"
    t.float "grupocotizacion"
    t.float "epigrafeat"
    t.float "diastrabsisesp"
    t.float "coefpermansisesp"
    t.string "prestaraservicio"
    t.string "categoria"
    t.string "funciones"
    t.string "tarea"
    t.string "riesgos"
    t.string "instalcolectivas"
    t.string "ubicaciontrabajo"
    t.float "horasjornada"
    t.string "jornadadesde"
    t.string "jornadahasta"
    t.string "horario"
    t.string "tiporetribucion"
    t.string "cadenciaretribucion"
    t.string "prueba"
    t.string "vacaciones"
    t.datetime "duraciondesde"
    t.datetime "duracionhasta"
    t.string "objeto"
    t.string "oficinaempleo"
    t.string "conveniocolectivo"
    t.float "salbrutoanual"
    t.integer "numhorasanual"
    t.decimal "margencont"
    t.float "prconvenidocltenormal"
    t.float "prconvenidoclteextra"
    t.float "prconvenidocltefestiva"
    t.float "prconvenidocltenocturna"
    t.float "prconvenidoopernormal"
    t.float "prconvenidooperextra"
    t.float "prconvenidooperfestiva"
    t.float "prconvenidoopernocturna"
    t.float "pago"
    t.float "ncentro"
    t.datetime "fecmod"
    t.string "nmatricula"
    t.string "baja"
    t.string "causabaja"
    t.string "conceptosal"
    t.string "observaciones"
    t.text "clausulasadicionales"
    t.integer "Client_id"
    t.integer "Employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_contracts_on_Client_id"
    t.index ["Employee_id"], name: "index_contracts_on_Employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.float "codoper"
    t.string "nombre"
    t.string "apellido1"
    t.string "apellido2"
    t.string "siglas"
    t.string "calle"
    t.string "numero"
    t.string "direccion"
    t.string "codpos"
    t.string "municipio"
    t.string "nacionalidad"
    t.string "telefono"
    t.string "telefono1"
    t.string "dni"
    t.string "nss"
    t.string "docidentificativo"
    t.string "regimen"
    t.datetime "fecmod"
    t.datetime "fecnacimiento"
    t.string "lugarnacimiento"
    t.string "sexo"
    t.boolean "volveravisar"
    t.string "observaciones"
    t.string "Iban"
    t.string "banco"
    t.string "oficina"
    t.string "dc"
    t.string "cuenta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
