class CreateClidistricts < ActiveRecord::Migration
  def change
    create_table :clidistricts do |t|
      t.string :name
      t.string :postalcode

      t.timestamps
    end
  end
end
