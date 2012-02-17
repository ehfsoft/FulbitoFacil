class Documenttype < ActiveRecord::Base
  has_many :user
  has_many :client
end
