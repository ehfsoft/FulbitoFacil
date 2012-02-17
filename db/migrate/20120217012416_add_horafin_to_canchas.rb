class AddHorafinToCanchas < ActiveRecord::Migration
  def change
    add_column :canchas, :horafin, :string
  end
end
