class Phrase < ActiveRecord::Base
  attr_accessible :category_id, :chinese, :english, :spanish
end
