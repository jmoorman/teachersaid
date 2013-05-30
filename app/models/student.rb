class Student < ActiveRecord::Base
  attr_accessible :FirstName, :Language, :LastName, :TeacherId
end
