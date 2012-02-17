class AddTiempoToCanchas < ActiveRecord::Migration
  def change
    add_column :canchas, :tiempo, :time
  end
end
