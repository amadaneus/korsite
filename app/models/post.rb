class Post < ApplicationRecord
  enum status: { draft: 0, published: 1}
  enum featured: { general: 0, featured: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :category
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true
  validates :body, presence: true

  mount_uploader :image, ManagerUploader

  def self.search(query)
    where("title like ? OR body like ?", "%#{query}%", "%#{query}%")
  end

end
