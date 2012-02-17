class AddHoraToCanchas < ActiveRecord::Migration
  def change
    add_column :canchas, :hora, :string
  end
end
