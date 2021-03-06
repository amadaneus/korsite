class Category < ApplicationRecord
  has_many :posts

  validates_presence_of :name

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end
