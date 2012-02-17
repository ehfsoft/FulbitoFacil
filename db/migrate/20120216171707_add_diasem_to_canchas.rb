class AddDiasemToCanchas < ActiveRecord::Migration
  def change
    add_column :canchas, :diasem, :integer
  end
end
