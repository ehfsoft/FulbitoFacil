class CreateFulclientes < ActiveRecord::Migration
  def change
    create_table :fulclientes do |t|
      t.string :nombre
      t.string :apepaterno
      t.string :apematerno
      t.string :sexcli
      t.string :numerodoc
      t.string :direccion
      t.string :correo
      t.string :confcorreo
      t.string :contrasena
      t.string :confcontrasena
      t.date :fecnacimiento
      t.string :celular
      t.references :documenttype
      t.references :clidistrict

      t.timestamps
    end
    add_index :fulclientes, :documenttype_id
    add_index :fulclientes, :clidistrict_id
  end
end
