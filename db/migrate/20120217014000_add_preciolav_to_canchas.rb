class AddPreciolavToCanchas < ActiveRecord::Migration
  def change
    add_column :canchas, :preciolav, :decimal
  end
end
