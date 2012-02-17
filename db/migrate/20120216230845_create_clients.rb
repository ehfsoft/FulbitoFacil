class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
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
      t.references :clidistricts

      t.timestamps
    end
    add_index :clients, :documenttype_id
    add_index :clients, :clidistricts_id
  end
end
