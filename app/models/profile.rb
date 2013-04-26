class Profile < ActiveRecord::Base
  has_many :boxes
  attr_accessible :slug

  def to_param
  	return slug
  end

end
