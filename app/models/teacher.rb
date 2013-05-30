class Teacher < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :prefix
end
