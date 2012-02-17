class AddDiaToCanchas < ActiveRecord::Migration
  def change
    add_column :canchas, :dia, :string
  end
end
