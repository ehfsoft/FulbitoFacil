class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apepaterno
      t.string :apematerno
      t.string :sexcli
      t.string :numerodoc
      t.string :direccion
      t.string :distrito
      t.string :correo
      t.string :confcorreo
      t.string :contrasena
      t.string :confcontrasena
      t.date :fecnacimiento
      t.string :celular
      t.references :documenttype

      t.timestamps
    end
    add_index :clientes, :documenttype_id
  end
end
