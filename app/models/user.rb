class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :login
  # attr_accessible :title, :body


  has_and_belongs_to_many :profiles

  def created_profiles
  	Profile.where("creator = ?", id)
  end



  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end
end
