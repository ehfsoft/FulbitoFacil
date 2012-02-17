class Local < ActiveRecord::Base
  belongs_to :district
  belongs_to :user
  validates_presence_of :name, :address, :addressgoogle, :district_id, 
  #:user_id, 
  :message => "esta en blanco o no seleccionado."
  validates_uniqueness_of :name, :message => "ya existe."
end
