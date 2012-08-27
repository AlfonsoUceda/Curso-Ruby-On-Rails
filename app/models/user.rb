class EmailValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
	end
end

class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :password, :password_confirmation
	
  has_many :reviews

  has_secure_password

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    email: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
end


