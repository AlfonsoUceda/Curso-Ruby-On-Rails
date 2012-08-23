class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :password, :password_confirmation
	
  has_many :reviews

  has_secure_password
end
