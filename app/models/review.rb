class Review < ActiveRecord::Base
  attr_accessible :description, :rating, :summary

  belongs_to :product, counter_cache: true
  belongs_to :user

  validates :description, presence: true,
  					  length: { minimum: 10 }
  validates :rating, presence: true
  validates :summary, presence: true,
  					  length: { minimum: 3 }

  def username
    user = User.find(self.user_id)
    user.firstname
  end

end
