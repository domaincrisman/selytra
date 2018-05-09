class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.float :ncontrato
      t.float :codcli
      t.float :codoper
      t.string :regimen
      t.text :causajustificante
      t.float :supuestocelebra
      t.integer :tipocontrato
      t.float :grupocotizacion
      t.float :epigrafeat
      t.float :diastrabsisesp
      t.float :coefpermansisesp
      t.string :prestaraservicio
      t.string :categoria
      t.string :funciones
      t.string :tarea
      t.string :riesgos
      t.string :instalcolectivas
      t.string :ubicaciontrabajo
      t.float :horasjornada
      t.string :jornadadesde
      t.string :jornadahasta
      t.string :horario
      t.string :tiporetribucion
      t.string :cadenciaretribucion
      t.string :prueba
      t.string :vacaciones
      t.datetime :duraciondesde
      t.datetime :duracionhasta
      t.string :objeto
      t.string :oficinaempleo
      t.string :conveniocolectivo
      t.float :salbrutoanual
      t.integer :numhorasanual
      t.decimal :margencont
      t.float :prconvenidocltenormal
      t.float :prconvenidoclteextra
      t.float :prconvenidocltefestiva
      t.float :prconvenidocltenocturna
      t.float :prconvenidoopernormal
      t.float :prconvenidooperextra
      t.float :prconvenidooperfestiva
      t.float :prconvenidoopernocturna
      t.float :pago
      t.float :ncentro
      t.datetime :fecmod
      t.string :nmatricula
      t.string :baja
      t.string :causabaja
      t.string :conceptosal
      t.string :observaciones
      t.text :clausulasadicionales
      t.references :Client, foreign_key: true
      t.references :Employee, foreign_key: true

      t.timestamps
    end
  end
end
