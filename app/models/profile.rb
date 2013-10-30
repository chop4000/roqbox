class Profile < ActiveRecord::Base
  has_many :boxes
  attr_accessible :slug

  validates :slug,
  	:presence => true,
  	:format => { :with => /\A[-0-9a-z_]*\Z/i },
  	:uniqueness => true

  has_and_belongs_to_many :users

  def to_param
  	return slug
  end

end
