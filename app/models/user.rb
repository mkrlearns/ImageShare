class User < ApplicationRecord
  has_many :images
  has_many :likes
  has_many :liked_images, through: :likes
  has_many :comments
  has_many :commented_images, through: :comments, source: :image
  has_many :tags, through: :images
  has_secure_password

  validates :username, presence: true, length: { maximum: 20 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 100 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
