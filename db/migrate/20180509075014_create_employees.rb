class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.float :codoper
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :siglas
      t.string :calle
      t.string :numero
      t.string :direccion
      t.string :codpos
      t.string :municipio
      t.string :nacionalidad
      t.string :telefono
      t.string :telefono1
      t.string :dni
      t.string :nss
      t.string :docidentificativo
      t.string :regimen
      t.datetime :fecmod
      t.datetime :fecnacimiento
      t.string :lugarnacimiento
      t.string :sexo
      t.boolean :volveravisar
      t.string :observaciones
      t.string :Iban
      t.string :banco
      t.string :oficina
      t.string :dc
      t.string :cuenta

      t.timestamps
    end
  end
end
