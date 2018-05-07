class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.float :codcli
      t.string :razsocial
      t.string :nif
      t.string :siglas
      t.string :calle
      t.string :numero
      t.string :direccion
      t.string :codpos
      t.string :municipio
      t.string :representada
      t.string :dni
      t.string :cargo
      t.string :nsscia
      t.string :cnae
      t.string :telefono
      t.string :telefono1
      t.string :fax
      t.float :pago
      t.integer :diapago1
      t.integer :diapago2
      t.float :ncentro
      t.datetime :fecmod
      t.float :politicafra
      t.float :iva
      t.float :req
      t.string :nombrebco
      t.string :ncuenta
      t.decimal :margencli

      t.timestamps
    end
  end
end
