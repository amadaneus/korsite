class User < ApplicationRecord
  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :trackable, :validatable

  validates_presence_of :name, :email

  def self.search(query)
    where("name like ? OR email like ?", "%#{query}%", "%#{query}%")
  end

end
