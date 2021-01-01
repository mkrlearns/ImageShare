class User < ApplicationRecord
  has_many :images
  has_many :likes
  has_many :liked_images, through :likes
  has_many :comments
  has_many :commented_images, through :comments, source: :image
  has_many :tags, through :images
end
