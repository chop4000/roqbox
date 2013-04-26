class Box < ActiveRecord::Base
  belongs_to :profile
  attr_accessible :text
end
