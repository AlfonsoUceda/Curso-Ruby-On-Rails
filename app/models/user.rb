class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname

  has_many :reviews
end
