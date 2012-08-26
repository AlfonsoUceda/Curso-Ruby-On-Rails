class Review < ActiveRecord::Base
  attr_accessible :description, :rating, :summary

  belongs_to :product, :counter_cache => true
  belongs_to :user

  def username
    user = User.find(self.user_id)
    user.firstname
  end

end
