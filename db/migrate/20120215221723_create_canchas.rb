class CreateCanchas < ActiveRecord::Migration
  def change
    create_table :canchas do |t|
      t.string :name
      t.text :description
      t.references :local

      t.timestamps
    end
    add_index :canchas, :local_id
  end
end
