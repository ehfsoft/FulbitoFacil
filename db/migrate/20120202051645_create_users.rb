class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :maidenname
      t.string :sex
      t.string :documentnumber
      t.string :email
      t.string :password
      t.date :datebirth
      t.references :documenttype

      t.timestamps
    end
    add_index :users, :documenttype_id
  end
end
