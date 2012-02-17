class CreateDocumenttypes < ActiveRecord::Migration
  def change
    create_table :documenttypes do |t|
      t.string :name
      t.string :shortname

      t.timestamps
    end
  end
end
