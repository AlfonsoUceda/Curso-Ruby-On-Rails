class Product < ActiveRecord::Base
  attr_accessible :brand, :category, :description, :name, :price

  has_many :reviews

  scope :textil_ordered, where(category: "Textil").order("price DESC")
  scope :nike, where(brand: "nike").order("category ASC")
end
