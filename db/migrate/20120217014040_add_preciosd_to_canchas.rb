class AddPreciosdToCanchas < ActiveRecord::Migration
  def change
    add_column :canchas, :preciosd, :decimal
  end
end
