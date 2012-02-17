class Comment < ActiveRecord::Base
 validates_presence_of :comment, :calification, :message => "Error, llene todos los campos requeridos."
 

end
