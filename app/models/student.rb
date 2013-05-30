class Student < ActiveRecord::Base
  attr_accessible :first_name, :language, :last_name, :teacher_id
end
